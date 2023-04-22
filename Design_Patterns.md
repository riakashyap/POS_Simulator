Design Patterns:
Factory Method Pattern: The factory pattern is a creational 
design pattern that provides a way to create objects without 
specifying the exact class of object that will be created. 
Instead, the factory method is responsible for creating the 
objects based on certain conditions or criteria. The 
PaymentFactory class is an implementation of the factory 
pattern. It creates objects of the Payment interface, which is 
implemented by various payment types such as 
CashPayment, CreditCardPayment, DebitCardPayment, 
UPIPayment, and GiftCardPayment.
The PaymentFactory class has a static createPayment method 
which takes in the paymentType, Amount, and paymentInfo 
as parameters. It uses a switch statement to decide which 
payment object to create based on the paymentType 
parameter. Once the appropriate payment object is created, 
it is returned as an instance of the Payment interface. The 
Payment interface has a processPayment method which is 
implemented by each of the payment classes. This method is 
responsible for the actual payment processing logic. Each 

payment class has its own implementation of the 
processPayment method based on the type of payment it 
represents. By using the factory pattern in this code, it 
becomes easier to add new payment types in the future 
without having to modify the existing code. All that is 
required is to create a new payment class and update the 
PaymentFactory class to include the new payment type. This 
makes the code more modular and extensible.
Strategy Pattern: The Strategy pattern is a behavioral design 
pattern that allows you to define a family of algorithms, 
encapsulate each one as an object, and make them 
interchangeable at runtime. It lets the algorithm vary 
independently from clients that use it. Implementation of the 
Strategy pattern is seen in the payment processing section. 
An interface Payment is present that defines the 
processPayment method, which represents a payment 
processing algorithm. There are concrete classes like 
CashPayment, CreditCardPayment, DebitCardPayment, 
UPIPayment, and GiftCardPayment that implement the 
Payment interface and define their specific payment 
processing algorithms. The PaymentFactory class is a factory 
that creates a specific payment object based on the type of 
payment passed to it. This factory method design pattern 
encapsulates the object creation logic and returns a created 
object to the client. In the handlePayment class, we can see 
the use of the strategy pattern to handle payments. The 

handle method accepts the invoiceTotal as an argument and 
prompts the user to select a payment option. Based on the 
user's selection, it calls the PaymentFactory to create a 
specific payment object and uses the processPayment 
method of that object to process the payment. This design 
pattern allows us to add new payment types and change the 
payment processing algorithm without modifying the existing 
code. It makes the code more flexible, reusable, and easy to 
maintain.
Template Method Pattern: It is design pattern, which is a 
behavioral pattern that defines the skeleton of an algorithm 
in a superclass but allows its subclasses to override certain 
steps of the algorithm without changing its structure. In this 
code, the ReviewCollector class is the abstract superclass that 
defines the template method collectReview() which is used to 
collect reviews. This then calls the saveReviewToFile() 
abstract method which saves the review to the file. The 
FileReviewCollector class is a concrete subclass of 
ReviewCollector that overrides the saveReviewToFile() 
method to save the review to a file named "reviews.txt" with 
handling of I/O exceptions. The Main class instantiates a 
FileReviewCollector object and calls its collectReview() 
method. The template method collectReview() is executed, 
which prompts the user for a review and a star rating, and 
then calls the overridden saveReviewToFile() method in the 
FileReviewCollector class to save the review to a file. The 

Template Method pattern is used in this code to provide a 
reusable and flexible way of collecting and saving reviews into 
a flatfile, where the basic algorithm is defined in the abstract 
superclass and the specific details of saving the review are in 
the concrete subclasses. Using this pattern also allows for 
easy extension and modification of the code. For example, if 
in the future, there is a need to save the reviews to a 
database, a new subclass could be created that overrides the 
saveReviewToFile() method to save the review to a database. 
This can be done without changing the structure which 
reduces the risk of errors.
Try Catch pattern: The try-catch design pattern in Java is used 
to handle exceptions that can occur during the execution of a 
program. The basic idea of the try-catch design pattern is to 
surround a block of code that might throw an exception with 
a try block. If an exception occurs, the catch block is executed, 
which allows the program to gracefully handle the exception.
It is a way to catch and handle runtime errors that occur 
during program execution. The basic structure of the trycatch pattern consists of a try block and one or more catch 
blocks. The code that might throw an exception is placed 
inside the try block. If an exception is thrown during the 
execution of the try block, the appropriate catch block is 
executed to handle the exception
