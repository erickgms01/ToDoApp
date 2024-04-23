import FirebaseAuth
import Foundation


class SignInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    
    func login() {
        guard validate() else {
             return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate()  -> Bool{
        errorMessage = ""
        
        //Verifica se os campos estão preenchidos
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all the fields"
            return false
        }
        
        //Verifica se o email é válido
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "Please enter a valid email"
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password must be 6 or more characters"
            return false
        }
        
        return true
    }
}
