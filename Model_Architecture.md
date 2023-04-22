Architectural Patterns:
Model-View-Controller (MVC) pattern:
MVC (Model-View-Controller) is a software architectural 
pattern that separates an application into three main 
interconnected components:
Model: Represents the data and business logic of the 
application. It is responsible for managing the data, logic, and 
rules of the application.
View: Represents the user interface (UI) of the application. It 
displays the data from the Model and allows the user to 
interact with the application.
Controller: Acts as an intermediary between the Model and 
View components. It receives the user's input from the View 
and interacts with the Model to update the data. It then 
updates the View to display the updated data to the user.
The idea behind the MVC pattern is to separate the concerns 
of an application into different components. This separation 
allows developers to work on individual components of the 
application independently, making it easier to maintain and 
extend the application over time.
Some of the benefits of using the MVC pattern include:
o Separation of concerns: It helps to separate the 
application logic from the user interface, making it easier 
to manage and maintain the code.

o Modular development: The MVC pattern promotes the 
development of reusable, modular code that can be 
easily extended and reused in other parts of the 
application.
o Better testability: The separation of concerns makes it 
easier to test each component of the application 
independently, improving the overall quality of the code.
o Flexibility: The MVC pattern allows developers to modify 
or replace any one of the components without affecting 
the other components of the application. Overall, the 
MVC pattern is a popular choice for developing 
applications because it promotes code maintainability, 
modularity, and flexibility.
The connection class(which is used to connect and update 
the inventory), CashPayment, CreditCardPayment, 
DebitCardPayment, UPIPayment, GiftCardPayment,
ReviewCollector, FileReviewCollector represents the Model 
component, the handlePayment, class represents the 
Controller component, and the POS_Simulator class 
represents the View component. The PaymentFactory class 
is a utility class that helps in creating Payment objects.
The Controller component receives user input from the 
View component, processes it, and updates the Model 
accordingly. The View component receives data from the 

Model and presents it to the user. The Model component 
manages the data and provides a way to access and 
manipulate that data. Using the MVC pattern, the code is 
organized in a way that promotes separation of concerns, 
making the code more modular and easier to maintain. It 
also allows for better scalability and reusability of code 
components.
