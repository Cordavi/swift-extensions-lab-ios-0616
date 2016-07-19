//
//  Extensions.swift
//  Extensions
//
//  Created by Michael Amundsen on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
   func wispher(string: String) -> String {
      return string.lowercaseString
   }
   
   func shout(string: String) -> String {
      return string.uppercaseString
   }
   
   var pigLatin: String {
      guard self.characters.count > 1 else {
         return self
      }
      
      let words = self.componentsSeparatedByString(" ")
      let pigLatinString = words.map({
         "\(convertToPigLatin($0))"
      })

      return pigLatinString.reduce("", combine: {
         $0 + String($1) + " "
      })
   }
   
   var points: Int {
      return convertStringToPoints(self)
   }
   
   func convertStringToPoints(word: String) -> Int {
      let vowels = "aeiou"
      let vowelSet = NSCharacterSet(charactersInString: vowels)
      let consonantsInWord = word.lowercaseString.componentsSeparatedByCharactersInSet(vowelSet).joinWithSeparator("")
      let vowelInWord = word.lowercaseString.componentsSeparatedByCharactersInSet(vowelSet.invertedSet).joinWithSeparator("")
      return (consonantsInWord.characters.count * 1) + (vowelInWord.characters.count * 2)
   }
   
   func convertToPigLatin(word:String) -> String {
      let firstLetter = word.characters.first
      let currentWord = word
      
      let currentWordWithOutFirstLetter = String(currentWord.characters.dropFirst())
      
      if let firstLetter = firstLetter {
         let firstCharString = String(firstLetter)
         let newString = currentWordWithOutFirstLetter + firstCharString + "ay"
         return newString
      }
      return ""
   }
}

