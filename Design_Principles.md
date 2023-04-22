<h1>Design Principles:</h1></br>
<b>Single Responsibility Principle (SRP):</b> It is a SOLID principle.
Each class is designed to have a single responsibility. For 
example, the connection class is responsible for handling the 
database operations, and the various Payment classes are 
responsible for handling different types of payments. Each of 
the classes (CashPayment, CreditCardPayment,
DebitCardPayment, UPIPayment, and GiftCardPayment) 
implements the Payment interface, which has only one 
method: processPayment(float amount). This method is 
responsible for processing the payment, which is the single 
responsibility of each of these classes. The CashPayment class 
only handles cash payments and does not connect to any 
external servers or systems. It simply logs the payment details 
and prints a confirmation message. The CreditCardPayment, 
DebitCardPayment, and UPIPayment classes connect to the 
bank server to process the payment, which is their single 
responsibility. The GiftCardPayment class authenticates the 
gift card by connecting to the gift card server, which is its 
single responsibility. The ReviewCollector class has a single 
responsibility of collecting reviews, and the 
FileReviewCollector class has the responsibility
of saving reviews to a file. Therefore, each class 
has a single responsibility, which adheres to the SRP.</br>



<b>Open/Closed Principle:</b> It is a SOLID principle. The 
Open/Closed Principle (OCP) is a SOLID design principle that 
states that software entities such as classes, modules, and 
functions should be open for extension but closed for 
modification. In other words, it should be possible to extend 
the behavior of a software component without modifying its 
source code. For Example, The PaymentFactory class is open 
for extension, as new payment types can be added without 
modifying the existing code. This is achieved through the use 
of a factory method that creates payment objects based on a 
payment type passed as an argument. If a new payment type 
needs to be added, a new case statement can be added to the 
switch block, without modifying the existing code. The 
handlePayment class is also open for extension, as new 
payment handling methods can be added without modifying 
the existing code. For example, if a new payment handling 
method needs to be added, a new method can be defined in 
this class, and the handle method can be modified to call the 
appropriate method based on the user's input. The 
ReviewCollector class is also open for extension, as new 
methods for collecting reviews can be added without 
modifying the existing code.</br>



<b>Low Coupling:</b> It is a GRASP principle. Low coupling refers to 
the extent of interdependency between various modules of a 
software system. Different classes are well-separated, and 
each class is responsible for a single task. Each class has its 
own specific responsibility, and there is no excessive 
interdependence between them. For example, the 
PaymentFactory class is responsible for creating payment 
objects based on the payment type. Similarly, the 
handlePayment class is responsible for handling different 
types of payments based on the user's input. The connection 
class is responsible for connecting to the database and 
executing SQL statements. Overall, we can say that the 
different classes have a well-defined role, and there is no 
unnecessary interdependence between them. Hence, we can 
conclude that the code exhibits low coupling.</br>



<b>Controller:</b> It is a GRASP principle. The controller principle is 
used to implement the main logic of the application, which 
controls the flow of the program. The POS_Simulator class is 
the controller, which is responsible for creating the 
connection object, invoking the model method, and then 
invoking the handlePayment class's handle method. The 
handle method takes the invoice total as input and prompts 
the user to select a payment option. Once the user selects a 
payment option, the handle method calls the PaymentFactory 
class's createPayment method, which creates an object of the 
corresponding payment type based on the user's selection. 
Finally, the ReviewCollector class's collectReview method is 
called to collect user feedback. The controller principle makes 
the code modular and easy to maintain by separating the 
application's main logic from the implementation details of 
the payment processing and feedback collection.</br>



<b>Creator:</b> It is a GRASP principle. The Creator Principle is a 
design principle that states that a class should be responsible 
for creating objects of other classes, or in other words, a class 
should have the responsibility of creating objects it uses. The 
Creator Principle is used in the PaymentFactory class to 
create payment objects based on the payment type passed in 
as an argument. The PaymentFactory class serves as a factory 
method that creates and returns payment objects based on 
the payment type requested. The switch statement within the 
PaymentFactory class encapsulates the object creation logic 
by creating an object of the relevant payment type based on 
the payment type passed in as an argument. The 
PaymentFactory class adheres to the Creator Principle 
because it is responsible for creating objects, and the creation 
of these objects is encapsulated within the class, allowing the 
client to remain decoupled from the object creation process. 
The client can simply request an object of the relevant type, 
and the factory method will create and return the 
appropriate object, without exposing the implementation 
details of the object creation process.
