# FoodTracker

Objectives of this Project:

-Study the fundamentals of application development	

-Study the fundamentals of buildign an applicaiton (e.g., MVC models)	

-Learn to build a simple iOS app, FoodTracker, an example provided online. 

-Added Firebase Authentication to the FoodTracker


HOW TO OPEN:

- Download the whole zip file from here

- Run the FoodTracker.xcworkspace file in the folder

HWK5 UNIT TEST (In the Folder 'Test'):

- The folder called "FoodTrackerUITests" contains Swift codes to test the Food tracker app with authentication included. This uses the built-in automation in XCode to do the automated testing. 

- The "EC601_Test_Cases.xlsx" file recordes all the test cases that I did for this iOS app

- The folder called "FoodTrackerTest" contains a Swift code to test the meal table and the add meal page.

Automation Test Interpretation:

- After running the built-in UI automation test, I was able check each button, textbox and uploading meal photos. The sign in function works after I entered a registered email address and the correct password. When I entered an incorrect email address, I was not allowed to sign in. There will be label with "Try Again." below the sign in page. The sign up function works too. I was able to register an account with the Firebase Authentication. The password should be at least 8 characters long. But I was able to sign in and sign up with passwords that are 6 characters long. After entering the main page, I was able to add meals and delete rows/meals. The upload image functions passes the test when I click the grey box. I am able to save meal when I only type in meal name and with no image. This function failed because it should ask me to upload image to save the meal.

- I couldn't run an automated test on my iOS app because it requires me to convert it to .ipa, which requires me to pay for exporting to it. Thus, I ran the monkey test with a classmate's web app. The screenshots are stored in the Test folder. 
Monkey Test:
It shows that the webpage works properly on load events, click events and links. There's a little warnings. The page looks well and have no big problem.
