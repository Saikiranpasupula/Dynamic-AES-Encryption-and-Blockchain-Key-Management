/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - vc12
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vc12` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vc12`;

/*Table structure for table `cregistration` */

DROP TABLE IF EXISTS `cregistration`;

CREATE TABLE `cregistration` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `emailid` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `mobilenumber` longtext NOT NULL,
  `gender` varchar(1000) NOT NULL,
  `dateofbirth` date NOT NULL,
  `address` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cregistration` */

insert  into `cregistration`(`id`,`name`,`emailid`,`password`,`mobilenumber`,`gender`,`dateofbirth`,`address`) values (1,'Virat','virat@gmail.com','1816','9874596254','Male','2025-03-31','Benguluru');

/*Table structure for table `fileupload` */

DROP TABLE IF EXISTS `fileupload`;

CREATE TABLE `fileupload` (
  `fileid` varchar(255) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `sha_256` varchar(64) NOT NULL,
  `managerid` varchar(1000) NOT NULL,
  `aes_key` varchar(1000) NOT NULL,
  `data` longtext NOT NULL,
  `privatekey` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fileupload` */

insert  into `fileupload`(`fileid`,`filename`,`sha_256`,`managerid`,`aes_key`,`data`,`privatekey`) values ('20452','file','fe7fe15298a950b63087efaacef3327b650ee83ee713084728ad8a5cf0439ea1','sandeep@gmail.com','2a2a6ab2ada9e11c','gtrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrPolymorphism in Java is mainly of 2 types as mentioned below: \n\nMethod Overloading\nMethod Overriding \nMethod Overloading and Method Overriding\n1. Method Overloading: Also, known as compile-time polymorphism, is the concept of Polymorphism where more than one method share the same name with different signature(Parameters) in a class. The return type of these methods can or cannot be same.\n\n2. Method Overriding: Also, known as run-time polymorphism, is the concept of Polymorphism where method in the child class has the same name, return-type and parameters as in parent class. The child class provides the implementation in the method already written.\n\nBelow is the implementation of both the concepts:\n\n\n\n1\n// Java Program to Demonstrate\n2\n// Method Overloading and Overriding\n3\n?\n4\n// Parent Class\n5\nclass Parent {\n6\n?\n7\n    // Method Declared\n8\n    public void func(){\n9\n        System.out.println(\"Parent Method func\");\n10\n    }\n11\n?\n12\n    // Method Overloading\n13\n    public void func(int a){\n14\n        System.out.println(\"Parent Method func \" + a);\n15\n    }\n16\n}\n17\n?\n18\n// Child Class\n19\nclass Child extends Parent {\n20\n?\n21\n    // Method Overriding\n22\n    @Override \n23\n      public void func(int a){\n24\n        System.out.println(\"Child Method \" + a);\n25\n    }\n26\n}\n27\n?\n28\n// Main Method\n29\npublic class Main {\n30\n    public static void main(String args[]){\n31\n        Parent obj1 = new Parent();\n32\n        obj1.func();\n33\n        obj1.func(5);\n34\n?\n35\n        Child obj2 = new Child();\n36\n        obj2.func(4);\n37\n    }\n38\n}\n\nOutput\nParent Method func\nParent Method func 5\nChild Method 4\nTo know more about the topic refer the Polymorphism in Java article.\n\nAdvantage of OOPs over Procedure-Oriented Programming Language\nObject-oriented programming (OOP) offers several key advantages over procedural programming:\n\nOOP promotes code reusability: By using objects and classes, you can create reusable components, leading to less duplication and more efficient development.\nOOP enhances code organization: It provides a clear and logical structure, making the code easier to understand, maintain, and debug.\nOOP supports the DRY (Don’t Repeat Yourself) principle: This principle encourages minimizing code repetition, leading to cleaner, more maintainable code. Common functionalities are placed in a single location and reused, reducing redundancy.\nOOP enables faster development: By reusing existing code and creating modular components, OOP allows for quicker and more efficient application development\nConclusion\nThe Object Oriented Programming (OOPs) concept in Java is a powerful way to organize and write code. It uses key ideas like classes, objects, inheritance, polymorphism, encapsulation, and abstraction to create flexible and reusable code.\n\nBy using the Java OOPs concept, programmers can build complex applications more efficiently, making the code easier to manage, understand, and modify. Overall, Java’s OOPs concepts help in creating robust and scalable software solutions.\n\nFAQs – Java OOPs Concepts\nWhat is OOPs concept in Java?\nOOPs (Object-Oriented Programming) is a programming paradigm based on the concept of objects, which can contain data in the form of fields (attributes or properties) and code in the form of procedures (methods or functions). In Java, OOPs concepts include encapsulation, inheritance, polymorphism, and abstraction.\n\n\nWhy is OOPs important in Java?\nOOPs helps in organizing and structuring code in a more manageable way, making it easier to maintain and scale Java applications. It also promotes code reusability, modularity, and flexibility, leading to efficient and robust software development.\n\n\nWhat are the main principles of OOPs in Java?\nThe main principles of OOPs in Java are encapsulation, inheritance, polymorphism, and abstraction. Encapsulation ensures that the internal state of an object is hidden and can only be accessed through public methods. Inheritance allows one class to inherit properties and behavior from another. Polymorphism enables objects to be treated as instances of their parent class. Abstraction focuses on hiding the implementation details and showing only the necessary information to the outside world.\n\n\nHow is OOPs implemented in Java?\nIn Java, OOPs is implemented through classes and objects. A class serves as a blueprint for creating objects, which are instances of that class. Each object has its own set of attributes (variables) and methods (functions). By following OOPs concepts like encapsulation, inheritance, polymorphism, and abstraction, Java developers can design well-structured and maintainable code.\n\n\nWhat are the advantages of using OOPs in Java?\nSome advantages of using OOPs in Java include code reusability, modularity, flexibility, scalability, and easier maintenance. OOPs enables developers to model real-world entities as objects, leading to more intuitive and organized code. It also supports features like inheritance and polymorphism, which enhance the extensibility and readability of Java applications.\n\n\nCan you provide an example of OOPs concept implementation in Java?\nSure! An example of OOPs concept implementation in Java is creating a ‘Car’ class with attributes like ‘make’, ‘model’, and ‘year’, along with methods like ‘start()’, ‘accelerate()’, and ‘stop()’. By instantiating objects from the ‘Car’ class and calling its methods, we can simulate the behavior of different car instances in a structured and object-oriented manner.\n\n\n\n\nClass and Objects in Java\nVisit Course\nexplore course icon\nVideo Thumbnail\nClass and Objects in Java\nVideo Thumbnail\nEncapsulation with Java\nMaster JAVA and also get 90% fee refund on completing 90% course in 90 days! Take the Three 90 Challenge today.\n\nAfter successfully processing refunds worth over INR 5 Cr, GeeksforGeeks is back with the Three 90 challenge and this is your chance to upskill and get 90% refund. What more motivation do you need? Start the challenge right away!\n\n\n\nComment\n\nMore info\nNext Article \nClasses and Objects in Java\nSimilar Reads\nBest Practices of Object Oriented Programming (OOP)\nAs the name suggests, Object-Oriented Programming or OOPs refers to languages that use objects in programming. Object-oriented programming aims to implement real-world entities like inheritance , abstraction , polymorphism, and encapsulation in programming. The main aim of OOP is to bind together the data and the functions that operate on them so t\n5 min read\nBrief Overview & Comparison of Object-Oriented Programming from C to Java\nIn this article, you will get the ability to think how really OOP works in Java through C. Through C, you will understand the concept of Polymorphism, Inheritance, Encapsulation, Class, Objects, etc. As you also know C language don\'t support OOP, but we can understand the concept behind it by defining a fine structure as a Class and Creating its Id\n3 min read\n7 OOP Design Principles Java Programmers Should Learn in 2023\nJava is one of the most widely-used object-oriented programming languages today, known for its robustness, cross-platform compatibility, and user-friendly syntax. Java developers are responsible for creating a wide range of software products that fuel our digital world, from web applications to mobile apps, desktop software, and enterprise solution\n15+ min read\nSpring Boot - Difference Between AOP and OOP\nAOP(Aspect-Oriented Programming) complements OOP by enabling modularity of cross-cutting concerns. The Key unit of Modularity(breaking of code into different modules) in Aspect-Oriented Programming is Aspect. one of the major advantages of AOP is that it allows developers to concentrate on business logic. It is more convenient to use because change\n3 min read\nWhy Java is not a purely Object-Oriented Language?\nPure Object Oriented Language or Complete Object Oriented Language are Fully Object Oriented Language that supports or have features that treats everything inside the program as objects. It doesn\'t support primitive datatype(like int, char, float, bool, etc.). There are seven qualities to be satisfied for a programming language to be pure object-or\n3 min read\nWhy C++ is partially Object Oriented Language?\nThe basic thing which are the essential feature of an object oriented programming are Inheritance, Polymorphism and Encapsulation. Any programming language that supports these feature completely are complete Object-oriented programming language whereas any language that supports all three feature but does not supports all features completely are Pa\n3 min read\nObject-Oriented Design (OOD) - System Design\nA crucial method for system design is object-oriented design (OOD), which places an intense focus on scalability, modularity, and reusability. OOD resembles real-world systems by encapsulating data and behavior into objects, which facilitates understanding programs and maintenance. By utilizing concepts like inheritance, polymorphism, and encapsula\n12 min read\nSpring Boot - AOP(Aspect Oriented Programming)\nThe Java applications are developed in multiple layers, to increase security, separate business logic, persistence logic, etc. A typical Java application has three layers namely they are Web layer, the Business layer, and the Data layer. Web layer: This layer is used to provide the services to the end-user using REST API or the web application.Busi\n4 min read\nCollator compare(Object, Object) method in Java with Example\nThe compare() method of java.text.Collator class is used to compare the strength of two objects and it will return 0, positive and negative value as an output according to the result . Syntax: public int compare(Object o1, Object o2) Parameter: This method takes two objects between which comparison is going to take place.Return Value: if the first\n2 min read\nOOPs Concepts in Android\nObject-oriented programming (OOP) is a programming paradigm that is based on the concept of \"objects\", which can contain data and code that manipulates that data. In Android, Java is the primary programming language used for developing Android apps. Java is an object-oriented language and it provides several features that support OOP, such as class\n8 min read\n\ncourse-img\n81k+ interested Geeks\nMERN Full Stack Web Development\nAvail 90% Refund\ncourse-img\n24k+ interested Geeks\nComplete Backend Development Program- Mastering OOPS, Spring Boot, and Microservices\nAvail 90% Refund\ncourse-img\n259k+ interested Geeks\nJava Programming Online Course [Complete Beginner to Advanced]\nAvail 90% Refund\ncourse-img\n194k+ interested Geeks\nFREE Java Course | Java Online Course [Updated 2024]\nAvail 90% Refund\ncourse-img\n268k+ interested Geeks\nJAVA Backend Development - Live\nAvail 90% Refund\ngeeksforgeeks-footer-logo\nCorporate & Communications Address:- A-143, 7th Floor, Sovereign Corporate Tower, Sector- 136, Noida, Uttar Pradesh (201305) | Registered Address:- K 061, Tower K, Gulshan Vivante Apartment, Sector 137, Noida, Gautam Buddh Nagar, Uttar Pradesh, 201305\nGFG App on Play Store\nGFG App on App Store\nAdvertise with us\nCompany\nAbout Us\nLegal\nCareers\nIn Media\nContact Us\nAdvertise with us\nGFG Corporate Solution\nPlacement Training Program\nExplore\nJob-A-Thon Hiring Challenge\nHack-A-Thon\nGfG Weekly Contest\nOffline Classes (Delhi/NCR)\nDSA in JAVA/C++\nMaster System Design\nMaster CP\nGeeksforGeeks Videos\nGeeks Community\nLanguages\nPython\nJava\nC++\nPHP\nGoLang\nSQL\nR Language\nAndroid Tutorial\nDSA\nData Structures\nAlgorithms\nDSA for Beginners\nBasic DSA Problems\nDSA Roadmap\nDSA Interview Questions\nCompetitive Programming\nData Science & ML\nData Science With Python\nData Science For Beginner\nMachine Learning\nML Maths\nData Visualisation\nPandas\nNumPy\nNLP\nDeep Learning\nWeb Technologies\nHTML\nCSS\nJavaScript\nTypeScript\nReactJS\nNextJS\nNodeJs\nBootstrap\nTailwind CSS\nPython Tutorial\nPython Programming Examples\nDjango Tutorial\nPython Projects\nPython Tkinter\nWeb Scraping\nOpenCV Tutorial\nPython Interview Question\nComputer Science\nGATE CS Notes\nOperating Systems\nComputer Network\nDatabase Management System\nSoftware Engineering\nDigital Logic Design\nEngineering Maths\nDevOps\nGit\nAWS\nDocker\nKubernetes\nAzure\nGCP\nDevOps Roadmap\nSystem Design\nHigh Level Design\nLow Level Design\nUML Diagrams\nInterview Guide\nDesign Patterns\nOOAD\nSystem Design Bootcamp\nInterview Questions\nSchool Subjects\nMathematics\nPhysics\nChemistry\nBiology\nSocial Science\nEnglish Grammar\nCommerce\nAccountancy\nBusiness Studies\nEconomics\nManagement\nHR Management\nFinance\nIncome Tax\nDatabases\nSQL\nMYSQL\nPostgreSQL\nPL/SQL\nMongoDB\nPreparation Corner\nCompany-Wise Recruitment Process\nResume Templates\nAptitude Preparation\nPuzzles\nCompany-Wise Preparation\nCompanies\nColleges\nCompetitive Exams\nJEE Advanced\nUGC NET\nUPSC\nSSC CGL\nSBI PO\nSBI Clerk\nIBPS PO\nIBPS Clerk\nMore Tutorials\nSoftware Development\nSoftware Testing\nProduct Management\nProject Management\nLinux\nExcel\nAll Cheat Sheets\nRecent Articles\nFree Online Tools\nTyping Test\nImage Editor\nCode Formatters\nCode Converters\nCurrency Converter\nRandom Number Generator\nRandom Password Generator\nWrite & Earn\nWrite an Article\nImprove an Article\nPick Topics to Write\nShare your Experiences\nInternships\nDSA/Placements\nDSA - Self Paced Course\nDSA in JavaScript - Self Paced Course\nDSA in Python - Self Paced\nC Programming Course Online - Learn C with Data Structures\nComplete Interview Preparation\nMaster Competitive Programming\nCore CS Subject for Interview Preparation\nMastering System Design: LLD to HLD\nTech Interview 101 - From DSA to System Design [LIVE]\nDSA to Development [HYBRID]\nPlacement Preparation Crash Course [LIVE]\nDevelopment/Testing\nJavaScript Full Course\nReact JS Course\nReact Native Course\nDjango Web Development Course\nComplete Bootstrap Course\nFull Stack Development - [LIVE]\nJAVA Backend Development - [LIVE]\nComplete Software Testing Course [LIVE]\nAndroid Mastery with Kotlin [LIVE]\nMachine Learning/Data Science\nComplete Machine Learning & Data Science Program - [LIVE]\nData Analytics Training using Excel, SQL, Python & PowerBI - [LIVE]\nData Science Training Program - [LIVE]\nMastering Generative AI and ChatGPT\nData Science Course with IBM Certification\nProgramming Languages\nC Programming with Data Structures\nC++ Programming Course\nJava Programming Course\nPython Full Course\nClouds/Devops\nDevOps Engineering\nAWS Solutions Architect Certification\nSalesforce Certified Administrator Course\nGATE\nGATE CS & IT Test Series - 2025\nGATE DA Test Series 2025\nGATE CS & IT Course - 2025\nGATE DA Course 2025\n@GeeksforGeeks, Sanchhaya Education Private Limited, All rights reserved\nWe use cookies to ensure you have the best browsing experience on our website. By using our site, you acknowledge that you have read and understood our Cookie Policy & Privacy Policy\nGot It !\nLightbox\nrrrrrrrrrrrrrrrrrrrrrrrr\n','2a2a6ab2ada9e11c');

/*Table structure for table `mregistration` */

DROP TABLE IF EXISTS `mregistration`;

CREATE TABLE `mregistration` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `emailid` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `mobilenumber` longtext NOT NULL,
  `gender` varchar(1000) NOT NULL,
  `dateofbirth` date NOT NULL,
  `address` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `mregistration` */

insert  into `mregistration`(`id`,`name`,`emailid`,`password`,`mobilenumber`,`gender`,`dateofbirth`,`address`) values (1,'Sandeep','sandeep@gmail.com','2001','8759642158','Male','2025-04-08','Andhra Pradesh');

/*Table structure for table `requestfiles` */

DROP TABLE IF EXISTS `requestfiles`;

CREATE TABLE `requestfiles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `filename` varchar(1000) NOT NULL,
  `encrypt_data` varchar(1000) NOT NULL,
  `cemail` varchar(1000) NOT NULL,
  `privatekey` varchar(1000) NOT NULL,
  `managerid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `requestfiles` */

insert  into `requestfiles`(`id`,`filename`,`encrypt_data`,`cemail`,`privatekey`,`managerid`) values (1,'file','fe7fe15298a950b63087efaacef3327b650ee83ee713084728ad8a5cf0439ea1','virat@gmail.com','2a2a6ab2ada9e11c','sandeep@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
