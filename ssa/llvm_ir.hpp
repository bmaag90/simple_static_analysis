#ifndef LLVM_IR_HANDLER_H
#define LLVM_IR_HANDLER_H

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/DebugInfoMetadata.h>
#include <memory>
#include <stdexcept>
#include <string>
#include <tuple>

class LLVMIRHandler {
private:
    std::unique_ptr<llvm::LLVMContext> context;
    std::unique_ptr<llvm::Module> module;
    std::unique_ptr<llvm::SMDiagnostic> err;

public:
    // Default constructor: create a context and diagnostic object
    LLVMIRHandler()
        : context(std::make_unique<llvm::LLVMContext>()),
          module(nullptr),
          err(std::make_unique<llvm::SMDiagnostic>()) {}

    // Construct from an existing module (take ownership)
    explicit LLVMIRHandler(std::unique_ptr<llvm::Module> mod)
        : context(std::make_unique<llvm::LLVMContext>()),
          module(std::move(mod)),
          err(std::make_unique<llvm::SMDiagnostic>()) {}

    // Non-owning accessor
    const llvm::Module *getModule() const {
        return module.get();
    }

    llvm::Module *getModule() {
        return module.get();
    }

    // Load a module from an IR file into our context. Throws on failure.
    void load_module_from_ir_file(const std::string &filename) {
        if (!context) context = std::make_unique<llvm::LLVMContext>();
        if (!err) err = std::make_unique<llvm::SMDiagnostic>();

        // parseIRFile returns std::unique_ptr<Module>
        std::unique_ptr<llvm::Module> M = llvm::parseIRFile(filename, *err, *context);
        if (!M) {
            err->print("LLVMIRHandler", llvm::errs());
            throw std::runtime_error("Failed to parse LLVM IR file: " + filename);
        }
        module = std::move(M);
    }

    // Get source filename for an instruction (directory/filename if available)
    static std::string getFilename(const llvm::Instruction &instruction) {
        llvm::DebugLoc debugLoc = instruction.getDebugLoc();
        if (debugLoc) {
            if (auto *diLoc = debugLoc.get()) { // DILocation*
                llvm::StringRef directory = diLoc->getDirectory();
                llvm::StringRef filename = diLoc->getFilename();
                std::string out;
                if (!directory.empty()) {
                    out.reserve(directory.size() + 1 + filename.size());
                    out += directory.str();
                    out.push_back('/');
                }
                out += filename.str();
                return out;
            }
        }
        return std::string();
    }

    // Get (line, column) for an instruction's debug location, or (-1,-1)
    static std::tuple<int, int> getLineCol(const llvm::Instruction &instruction) {
        llvm::DebugLoc debugLoc = instruction.getDebugLoc();
        if (debugLoc) {
            unsigned lineNumber = debugLoc.getLine();
            unsigned columnNumber = debugLoc.getCol();
            return std::tuple<int, int>{static_cast<int>(lineNumber), static_cast<int>(columnNumber)};
        }
        return std::make_tuple(-1, -1);
    }

    // Render the instruction to a string (callsite)
    static std::string getCallsite(const llvm::Instruction &instruction) {
        std::string str;
        llvm::raw_string_ostream ss(str);
        instruction.print(ss);
        ss.flush();
        return str;
    }
};

#endif // LLVM_IR_HANDLER_H
