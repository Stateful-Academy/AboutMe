# About Me

---

In this project, you will use your knowledge of Swift to build an app that displays either your cohort mates or a few famous friends. We will use everything you’ve learned so far to complete this!

---

Students who complete this project independently or as a pairing will showcase their understanding of the following principles:

- Basic `Storyboard` constraints
- Creating Custom `class` objects
- Constants, Variables, and Basic Data Types
- UIImageview
- Collections
- Functions
- Control Flow
- IBActions && IBOutlets

## Completed project
![About_Me](AboutMe.gif)

## Design the Storyboard

To create our storyboard will need to flex our skills with Interface builder, constraints, and adding attributes. View the video of the completed project to get an idea of what the storyboard will look like. Okay, let’s get started!

### Starting from the top down

Let’s begin our interface design by adding a `UIImageview` to the canvas.

1. Access the object library via the + on the top right side. Drag an `Image View` object to the canvas.
2. Set the following constraints to the `Image View`
    - Center `horizontally` in the container.
        - To do this you can `control drag` from inside the `imageView` and end inside the `imageView`
    - Align the `top` to the `safe area`
    - Set the `height` to `200`
    - Add an `aspect ratio` of 1:1
        - To do this you can `control drag` from inside the `imageView` and end inside the `imageView`

Now let’s add the `UILabel`s that will display the text of our application.

1. Drag three `Label` objects from the `Object Library` and drop them onto the canvas
2. Embed the three `Label` into a `Stack View`
3. Via the `Attributes Inspector` Give each label basic text that describes what it will hold eventually
    - (Name)
    - (Age)
    - (Occupation)
4. Via the `Attributes Inspector` of the `Stack View` adjust the following values
    - Set the alignment to Leading
    - Set the Distribution to Fill
    - Set the spacing to 15
5. Lock in your `Stack View` with the following constraints
    - Align `Leading` and `Trailing` to 25 points to the `Safe Area`
    - Align the `top space` to 10 points to the `bottom` of the `UIImageView`
6. Now we need to add a `UITextView` to display the largest of our text.
7. Drag a `Text View` view element from the `Object Library` and drop it onto the canvas under the `Stack View` which holds our `Label`s
8. Set the following constraints
    - Align `Leading` and `Trailing` to `20` points to the `Safe Area`
    - Align the `top space` `10` points to the `bottom` of the `Stack View`
    GGEZ, right?
    

Now, all we have left to do is create our Back Button, Forward Button, and a label to display what user we are on.

1. Drag 2 `UIButton` Objects from the library and place them onto the canvas.
2. Drag 1 `Label` Object from the library and place it onto the canvas
3. Embed all three of these ^ view elements into one `Stack View`
    - Ensure the Label is the center object
4. Via the `Attributes Inspector` of the `Stack View` adjust the following values
    - Set the axis to the appropriate direction for the look we desire
    - Set the alignment to `Fill`
    - Set the Distribution to `Fill Equally`
    - Set the spacing to 0
5. Give one `button` the `title` of `<---`
6. Give the other `button` the `title` of `-->`
7. Give the label a default title that represents what it will eventually display
    - (1/9)
8. The `Stack View` should have the following constraints which should lock all your objects into their beautiful and final positions
    - Align the Trailing, Leading, and Bottom `20` points to the `Safe Area`
    - Align the top `10` points to the `bottom` of the `textView`

Great work! Now feels like a great time to create all the IBActions and IBOutlets you will need. Go ahead and rock that out.

---

## Model

In this section, we will create a person model with the properties we wish to display. 

- To do this, we need to first create a new`.Swift` file for us to use. File -> New -> File -> Swift File. Please give this file the name `Person`

On this new file define a `class` with the following properties and a `member-wise initializer`. Be sure to use the appropriate `Data Types` for each `property`

- name
- birthday (String) // YYYY/MM/DD
- occupation
- description
- profilePicture

Feel free to review the video [classes](https://player.vimeo.com/video/664057680?h=0c1d398ab2) for information on what a `member-wise initializer` is and how to write one. As always, you’re welcome to use external resources such as Google and Stack Overflow.

---

## Data File

To make things easier on us in the long run we will create a `Data` file that will hold our `collection` of `Person` objects. We will then reference back to this `collection` in our `View Controller` to display the correct information. 

- To do this, we need to first create a new`.Swift` file for us to use. File -> New -> File -> Swift File. Please give this file the name `Data`.

On our new `Data.Swift` file, please define a `struct` with the name `Data`. The next section of instruction will be written with the scope of the `Data` struct.

1. Define a new constant named `people` and set it to be of value an `Array` of `Person` objects. Assign this to an empty `Array Literal`
2. Within the `[ ]` initialize as many `Person` objects as you aim to display
    - No less than three
3. Set the `people` array to be `static`
    - This allows us to access the values outside this file

This section may be a bit confusing so below showcases an example of how it should

```swift
static let people: [Person] = [Person(name: "Karl MEME", birthDay:"2022/01/10", occupation: "Dank", description: "I code stuff", profilePicture:  imageLiteral(resourceName: "karl")), .....

```

Don’t forget to add images to your `Assets` folder!

---

## View Controller

Here is where the magic happens! On our `View Controller` we will write the code to display all our data to our users! At this time you should have all your `IBOutlets` and `IBActions` already created.

One of the first challenges to overcome is knowing what `Person` object we are displaying so we know what the previous along with what the next object to be displayed will be. To accomplish this we will create a local property called Index.

- Create a new variable named `index` with a default value of `0`

Great work! Now let's start working on a helper function to display our data!

1. Define a function with the name `updateUI` with no parameters.
2. Within the body of this function complete the following tasks
    - Create a constant named `person` and assign the value of whatever `Person` objects index matches the current value of our `index` property

```swift
let person = Data.people[index]
```

1. Set the `text` property of your `nameLabel` to the `name` of the `person` object. Use string interpolation to make this read even better.
    - “Name: Enter code Here”
2. Set the `text` property of your `occupationLabel` to the `occupation` of the `person` object.
3. Set the `text` property of your `descriptionTextView` to the `description` of the `person` object.
4. Set the `image` property of your `profileImageView` to the `profile` of the `person` object.
5. Set the `text` property of your `currentPlaceLabel` to the current index.
    - For this to work you’ll need to use string interpolation to show the current index and the overall count of `people` objects.
        - Hint - arrays index at 0
        

To display the `age` beautifully we will need a few things. We will need a helper function that will do all the math for us to know how old the `person` is. Then we need to convert that `Date` to a string to properly display it.

Let’s start with the helper function to mathematically determine the `age` of a person.

1. Define a new function with the name `myAge` with one parameter; `birthday` which will be of type `Date`. This function should return to us an `Int`
2. Create a new constant named `age` and assign it to the result of the `Calendar.current.dateComponents( [.year], from start: , to end: )` method.
    - `from:`  should be the `birthday` that was passed into the `myAge` function
    - `to:`  should be a `Date` initialized to the current date and time

Return the `age.year`. This will be optional so use `nil coalescing` to return `0` if nil.

Now navigate back to the `updateUI` method. The remaining instructions will be written within the scope of this method.

We are so close to being able to display the age. All we have left to do is use a `DateFormatter` to take our `date` and display it as a `String`. To accomplish this we will need to...

1. Define a new constant named `formatter` and align it to an initialized `DateFormatter` class
2. Using dot notation access the `dateFormat` property of the `formatter` and assign the value of `”yyyy/MM/dd”`
    - Note the capitalization - its important
3. Set the `text` property of your `ageLabel` to the a `string literal` that reads `”Age: \\(myAge(birthday: formatter.date(from: person.birthDay)!))”`
4. Call your `updateUI` function in the `viewDidLoad`
5. Set the `content mode` of your `ImageVIew` to `.scaleAspectFit`

### Build and run your project! Let’s see how it works.

---

At this point, the app should build, run, and display the first `person` in your `people` array. We still need to add in the functionality of our buttons cycling the objects. Let's do that now

### Forward Button

For the forward button to work we need to know if we have reached the end of the `people` array.

1. Write an `if-statement` that checks if `index` is less than the count of your people array
    - Arrays index at 0 😎
2. if the `index` is indeed less than the count of our `people` array
    - Add and assign `1` to the `index`
    - update the UI

### Back Button

1. Write an `if-statement` that checks if `index` is greater than `0`
2. If the `index` Is indeed greater than `0`
    - decrease the `index` by `1`
    - update the UI

### Build and run your project! Let’s see how it works.

The app should now build and function properly! Nice work!!!

---

# Stretch goals

Try and get your `image view` to look like the one in the demonstration recording
