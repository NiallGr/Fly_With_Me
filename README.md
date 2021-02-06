# Fly With Me
Flight booking application with user and administration functionality. Built using/on :
- Agile Scrum Development Cycle
- Eclipse EE
-	Maven
-	Java 1.8
-	JSP
-	JavaScript
-	CSS & Bootstrap
-	MySQL
-	Server : Tomcat v8.5


## Video Tour:   https://www.youtube.com/watch?v=ROgk7AnqcxI


## Prebuild  
Created a workflow using the Scrum methodology: This workflow was spread out of 3 sprints, with a duration of 2 weeks in each sprint. (6 weeks total dev cycle)
This is captured in "img: 1.1"

"img: 1.1" Click on images to see more clearly. 
]![FlyWithMe_Scrum](https://user-images.githubusercontent.com/62908390/107108318-e14fa200-67eb-11eb-8502-4f73af6a2034.JPG)
## Build
### Sprint 1 (week 1 - 2) Front End
 - Created a visual diagram with the files, class’s & method's that I intended to use in the project. (Check Img 1.2)
 
 - 	USER Create front-end JSP files:
     - Index.jsp
     - customerFlightSearch.jsp
     - customerRegistration.jsp
     - cusomerPayment.jsp
     -	customerConformation.jsp
     
- 	Administration Create front-end JSP files:
    - AdminLogin.jsp
    -	adminFlightUpdate.jsp
    -	adminFlightPage.jsp
    -	adminFLightDelete.jsp
    -	adminDetailsPage.jsp
    -	adminDetailsUpdate.jsp
    -	adminDetailsDelete.jsp
    -	adminCustomerPage.jsp
    -	adminCustomerUpdate.jsp
    -	adminCustomerDelete.jsp




IMG 1.2 Click on images to see more clearly. 
![Fly-With-Me_Workflow](https://user-images.githubusercontent.com/62908390/107108324-e7de1980-67eb-11eb-8a56-e819c559427e.jpg)

### Sprint 2 (Week 3-4)
-	Create MySQL Database (IMG 1.3) Files to create Database in MySQL are above in repository (Database_Fly-With-Me)
    -	Flight_data
      -	adminstration_details
    -	customers
      -	customer
    -	administration
	    -flights
      
-	Create Administration login with user Validation in a Servlet file.

- Create functionality on Flights page
    - Add
    -	Delete
    -	Edit
-	Create functionality on customer page
    -	Add
    -	Delete
    -	Edit
-	Create functionality on administration page
    -	Add
    -	Delete
    -	Edit
- Create search functionality on Index page.

-	Displaying search results on customerFlightSearch.js and ability for user select flight based on ID value.

-	customerRegistration.jsp page, flight ID value is kept, and corresponding flight ID values are displayed.
    -	User Create Functionality
    -	User Login Functionality
    
-	CustomerPayment.jsp, Display Username from login credentials and flight ID value are kept, Display the flight information with the corresponding ID.
    -	Dumbing Payment
-	CustomerConformation.jsp Display the flight information with the corresponding ID in confirmation page.


IMG 1.3 Click on images to see more clearly. 
![Changes_To_Database](https://user-images.githubusercontent.com/62908390/107108312-d72da380-67eb-11eb-99a3-e09c825d9118.JPG)

### Sprint 3 (Week 5-6)
- User Test
- Fixes Bugs

Issues:
1.	Database connections need to be configured when pulled from GitHub.
2.	Database connections are not designed in the best possible way (allot of repetitive code).

Amendment:
1.	Connect your own private database (MySQL) and edit the files and line below with the following information.
Items that need to be changed: See IMG 1.4 (exact lines and files to change)
-	Database Url :
-	Database Username :
-	Database Password :
2.	To eliminate this repetitive code, I would/will use servlet in the future to have standard database connection Java files so the connections only needed to be changed once.



![MySQL_Fly-With-Me_Structure](https://user-images.githubusercontent.com/62908390/107108372-355a8680-67ec-11eb-93e4-299e93a3bce7.JPG)
