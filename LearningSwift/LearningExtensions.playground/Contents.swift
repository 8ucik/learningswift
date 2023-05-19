import UIKit

// extensions can be done on any type of files
extension String {
    
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F G"
print(alphabet.removeWhiteSpace())
