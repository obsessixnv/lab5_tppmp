func analyzeCharacter(_ char: Character) {
    print("Аналіз символа '\(char)':")
    
    if char >= "0" && char <= "9" {
        print("- Це цифра.")
    } 
    else {
        print("- Це не цифра.")
    }
    
    if (char >= "A" && char <= "Z") || (char >= "a" && char <= "z") {
        print("- Це літера англійської абетки.")
    } 
    else if (char >= "А" && char <= "Я") || (char >= "а" && char <= "я") {
        print("- Це літера української абетки.")
    } 
    else {
        print("- Це не літера англійської чи української абетки.")
    }
    
    if char >= "A" && char <= "Z" || char >= "А" && char <= "Я" {
        print("- Це велика літера.")
    }
    else if char >= "a" && char <= "z" || char >= "а" && char <= "я" {
        print("- Це мала літера.")
    } 
    else {
        print("- Це не літера, тому регістр не визначається.")
    }
}

analyzeCharacter("A")  
analyzeCharacter("я")  
analyzeCharacter("3")  
analyzeCharacter("@") 
