# PassDataBtwnVC
There are several ways how to pass data between ViewControllers. I choose the most popular one. Here are some of them in the Project. 

1. Singleton.

It's one of the shortest and easiest way for passing the data between ViewControllers. For this purpose you need to create a global variable, which is actually a single instance of a certain class. It can be reached out anywhere in the project. 
Then, you can get the data and put it to any sort of variable of another ViewController.

2. Segue.

For this purpose you to create the segue via storyboard. Choose the UI element, which will be used to make connection and drag to the second ViewController. 
Then, select the Show option from the Action Segue menu. On the first ViewController class, you need to override the prepare(for segue: ) method, where you need get the access to the second ViewController through segue.destination variable for passing the data.

3. Delegate.

 It's more complicated way to passing the data between ViewControllers, because it contains more steps for doing that. The delegate pattern allows an object to communicate back with its owner. 
 For implementing that you basically need to create a delegate protocol to define the requirements to deliver the data. The first ViewController, which receives the command/data from the Second ViewController must conform to the protocol. 
 Once you pass the data to the First ViewController, you need to inform the Second ViewController using the delegate, which was created in advance as a property. Also, you need to create a method (in this case, you used the button-pressed action) to inform someone about when the action was taken. 
 For more details, look at the code in DelegateAndSingleton the directory.
 
