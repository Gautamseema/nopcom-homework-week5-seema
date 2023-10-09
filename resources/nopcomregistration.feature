Feature: Nopcommerce register

As a user, I want to check the Registration functionality of nopcommerce

Background: I am on nopcommerce registration page
Given   I open the Google chrome browser
When    I open the URL https://demo.nopcommerce.com/register
Then    I am on nopcommer registration page

Scenario Outline: I should not be able to register with invalid data on mandatory field (*)
                   of registration page
When    I enter first name"<First Name>"
And     I enter last name "<Last name>"
And     I enter email address "<Email>"
And     I enter password "<Password>"
And     I enter confirm password "<confirm password>"
And     Click on registration button
Then    I can see an error message "<error message>"
And     I am not able to register

Examples:
  | First Name | Last Name  | Email             | Password | confirm password | Error mrssage                              |
  |   ""       | Kane       | Vicky@gmail.com   | 676767   |  676767          | please enter first name                    |
  |  Vicky     |  ""        | Vicky@gmail.com   | 676767   |  676767          | please enter last name                     |
  |  Vicky     | Kane       |      ""           | 676767   |  676767          | please enter  valid email                  |
  |  Vicky     | Kane       | Vicky@gmail.com   | ""       |  676767          | password is required                       |
  |  Vicky     | Kane       | Vicky@gmail.com   | 676767   |   ""             | confirm password is required               |
  |  Vicky     | Kane       | Vicky@gmail.com   | 676767   |  67677           | password and confirm password do not match |
  |  Vicky     | Kane       | Vicky@gmail.com   | 67677    |  ""              | minimum 6 character password is required   |
  |   ""       | ""         |  ""               | ""       |  ""              | mandatory (*) filled is required           |

Scenario: I should be able to select any radio button from gender label of your personal details section
Given  I am on Date of Birth field of your personal details section
When   I select day "<Day>"
And    I select month "<Month>"
And    I select year "<Year>"
Then   I am able to select Day, Month,and year from drop down list

Example:
  | Day | Month | Year  |
  | 11  | March | 1989  |

Scenario: I should be able to check and uncheck the newsletter box on option section
When   I cilck on newsletter label on option section
And    I again click on newsletter check box
Then   I was able to check and uncheck the box next to newsletter label

Scenario: I should be able to register with valid mandatory (*) field data on registration page
When  I enter first name "<Vicky>"
And   I enter last name "<Kane>"
And   I enter email "<Vicky@gmail.com>"
And   I enter password "<676767>"
And   I enter confirm password "<676767>"
And   I click on registration button
Then  I was able to register successfully
