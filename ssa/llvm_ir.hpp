#ifndef LLVM_IR_HANDLER_H
#define LLVM_IR_HANDLER_H

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include <llvm/IR/DebugInfoMetadata.h>
#include <memory>
#include <stdexcept>
#include <string>
#include <tuple>
#include <variant>


class LLVMIRHandler {
private:
    std::unique_ptr<llvm::LLVMContext> context;
    std::unique_ptr<llvm::Module> module;

public:
    explicit LLVMIRHandler(llvm::Module *module) : module(module) {}

    explicit LLVMIRHandler(const std::string &filename) {
        context = std::make_unique<llvm::LLVMContext>();
        llvm::SMDiagnostic err;
        this->module = llvm::parseIRFile(filename, err, *context);

        if (!this->module) {
            err.print("LLVMIRHandler", llvm::errs());
            throw std::runtime_error("Failed to parse LLVM IR file");
        }
    }

    const llvm::Module *getModule() const {
        return module.get();
    }
    
    static std::string getFilename(const llvm::Instruction& instruction){
		llvm::DebugLoc debugLoc = instruction.getDebugLoc();

		if (debugLoc) {  // Check if debug info exists
			llvm::DILocation *diLoc = debugLoc.get();
			if (diLoc) {
				llvm::StringRef directory = diLoc->getDirectory();
				llvm::StringRef filename = diLoc->getFilename();
				return directory.str() + "/" + filename.str();
			} else {
				return std::string("");
			}
		} else {
			return std::string("");
		}
	} 
	
	static std::tuple<int, int> getLineCol(const llvm::Instruction& instruction){
		llvm::DebugLoc debugLoc = instruction.getDebugLoc();

		if (debugLoc) {  // Check if debug info exists
			unsigned lineNumber = debugLoc.getLine();
			unsigned columnNumber = debugLoc.getCol();
			
			return std::tuple<int, int>{static_cast<int>(lineNumber), static_cast<int>(columnNumber)};
		} else {
			return std::make_tuple(-1, -1);
		}
	}
	
	static std::string getCallsite(const llvm::Instruction& instruction){
		std::string str;
		llvm::raw_string_ostream ss(str);
		instruction.print(ss);

		return ss.str();
	}
};

#endif // LLVM_IR_HANDLER_H
