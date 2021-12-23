//
//  ValidationModel.swift
//  LoginTask
//
//  Created by Macintosh on 15/12/21.
//

import Foundation
extension String{
    
    func validateEmailId() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return applyPredicateOnRegex(regexStr: emailRegEx)
    }
    
    func validatePassword() -> Bool {
        let passRegEx = "^(?=.*[A-Za-z0-9])(?=.*\\d)[A-Za-z0-9\\d]{6}$"
        return applyPredicateOnRegex(regexStr: passRegEx)
    }
        
    func applyPredicateOnRegex(regexStr: String) -> Bool{
        let trimming = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimming)
        return isValidateOtherString
    }
}
