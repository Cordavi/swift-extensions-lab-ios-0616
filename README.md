#Extensions 

##Objectives
  * Practice creating extensions on classes
  * Practice calling and printing values associated with extensions created

##Instructions

Open the workspace and create a new empty Swift file called ```Extensions```. This is where you're going to create all of the extensions. Remember to run often but without the declaration of the objects and functions listed below you won't be able to run the tests. But you can always use the console to make sure your getting the correct output. 

###String
1. Create an extension function for the ```String``` class called ```whisper()```
  * Returns a ```String``` in lowerscase to create a whispering effect
2. Create a ```String``` extension function for the ```String``` class called ```shout()```
  * Returns a ```String``` in upperscase to create a shouting effect
3. Create a ```String``` extension computed property for the ```String``` class called ```pigLatin```
  * Takes the first letter of a word and moves it to the end 
  * Adds the letters "ay" to the end of the word
  * Should be able to handle sentances
  * If it's a single letter, it should return the character
4. Create an ```Int``` extension computed property for the ```String``` class called ```points``` 
  * Should calculate the amount of points a given string has
  * 1 point for consonants and 2 points for vowels
  * Ignores spaces and numbers, returns zero for empty strings

###Int
2. Create an extension function for the ```Int``` class called ```half()```
  * Halves itself
3. Create an extension function for the ```Int``` class called ```isDivisibleBy()```
  * To find out if the recipient ```Int``` is divisible by the argument
  * Takes in an ```Int``` argument 
  * Returns a ```bool```
4. Create an extension computed property for the ```Int``` class called ```squared```
  * Squares itself
5. Create an extension computed property for the ```Int``` class called ```halved```
  * Halves itself by calling a function

##Using Your Extensions
In ```ViewController.swift``` inside the function body of ```viewDidLoad()```:

1. Create a ```String``` object with the value as your full name called ```fullName``` 
3. Create an ```Int``` object with the value 8675309 called ```phoneNumber```
3. Print the value of the extension computed properties on ```fullName``` and ```phoneNumber```
4. Call all of your ```String``` and ```Int``` functions on your name and print them to the console

###Emoji
1.Create a computed extension property on ```String``` called ```unicornLevel```

  * Calculates one unicorn for each character in the recipient ```String```
  * Use this totes adorbs unicorn emoji 🦄 directly in your code. For example:
  
```swift
let unicornPhrase = "My 🦄 is awesome"
print(unicornPhrase)
```

Console output: ```My 🦄 is awesome```


2.You probably haven't interacted with ```UIView``` much or maybe not at all, but let's get our unicorn status to be displayed in the simulator. Don't worry too much about how it's doing it just yet. You'll get into that later on!

In the ```ViewController.swift```:

* You'll see that we've added something called an ```IBOutlet``` to the top called ```unicornLevelLabel```. This represents the object we're going to display our text in.
*  ```unicornLevelLabel``` has a property ```text``` set the value of the property to your name object's ```unicornLevel``` property
*  Run the program and see your unicorn level displayed in the simulator!
