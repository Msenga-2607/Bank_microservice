# Bank Micro Service Application
This is a Bank Micro Service Application developed using Spring Boot framework. It provides microservices to perform various banking operations.

## Microservices
1. Account Service (port 8001)
   - The Account Service is responsible for maintaining records of all the different types of accounts offered by the bank. This information is stored in a database, which can be accessed by other microservices as needed.
   - The Account Service also keeps track of the customers who have accounts with the bank.
2. Customer Service (port 8002)
   - The Customer Service is responsible for maintaining records of all the customers of the bank. This information includes customer details such as name, address, and contact information.
   - This information is stored in a separate database, which can be accessed by other microservices as needed. 
3. Loan Service (port 8003)
   - The Loan Service is responsible for maintaining records of all loan requests made by customers of the bank. This information includes details such as the amount of the loan, the purpose of the loan, and the customer's credit history.
   - This information is stored in a separate database, which can be accessed by other microservices as needed.
4. Staff Service (port 8004)
   - The Staff Service is responsible for maintaining records of all the staff members of the bank. This information includes details such as the staff members' names, positions, and responsibilities.
   - This information is stored in a separate database, which can be accessed by other microservices as needed.
5. Transaction Service (port 8005)
   - The Transaction Service is responsible for maintaining records of all transactions made by customers of the bank. This information includes details such as the date, amount, and type of transaction.
   - This information is stored in a separate database, which can be accessed by other microservices as needed.

## Technology Stack
- Spring Boot
- Java
- Microservices Architecture

## How to run the application
1. Clone the repository
2. Navigate to the project directory
3. Build the project
4. Run the application


## User Interface
The user interface for the bank microservices application is implemented using JSP (JavaServer Pages). JSP is a template engine that allows developers to create dynamic HTML pages using Java code.

## JSP Implementation
1. Required dependencies were added to the `pom.xml` file to use JSP with Spring Boot.
2. JSP files were created in the `src/main/webapp/views/.jsp` directory.
3. A Controller was implemented to map to the JSP files. This Controller uses the `@GetMapping` annotation to define a URL endpoint for the index page, which returns the `index.jsp` file.

## Database
All the microservices use the same database server (localhost), with the same username (root) and password ("").

## Dependencies
- tomcat-embed-jasper library