# *Adapter*

### [Gamma et al. 95] 

----

## Intent

- An **adapter** converts the interface from one class to another in accordance with the client's expectations.

----

## Motivation

- How can a class be reused that does not have an interface that a client requires?
- How can classes that have incompatible interfaces work together?
- How to provide an alternative interface for a class?

----

## Motivation Example

![](resources/png/adapter-example.png)

----

## Structure 

![](resources/png/adapter-structure.png)

----

## Consequences

- Respects the *Single Responsibility Principle* and the  *Open/Closed Principle*
- *Increases the overall complexity of the code*

note:

- *Single Responsibility Principle*. You can separate the interface or data conversion code from the primary business logic of the program.
- *Open/Closed Principle*. You can introduce new types of adapters into the program without breaking the existing client code, as long as they work with the adapters through the client interface.
- *The overall complexity of the code increases* because you need to introduce a set of new interfaces and classes. Sometimes it’s simpler just to change the service class so that it matches the rest of your code.

----

## Implementation Tradeoffs

Class and object adapters have different trade-offs.

-  A **class adapter**:
  - adapts the *Adaptee* to the *Target* by committing to a concrete *Adaptee* class. 
  As a consequence, a class adapter won’t work when we want to adapt a class and all its subclasses.
  - lets the *Adapter* override some of the *Adaptee*’s behavior, since *Adapter* is a subclass of *Adaptee*.
  - introduces only one object, and no additional pointer indirection is needed to get to the *Adaptee*.

----

- An **object adapter**:

  - lets a single *Adapter* work with many *Adaptee*s—that is, the *Adaptee* itself and all of its subclasses (if any). 
  The *Adapter* can also add functionality to all *Adaptees* at once.
  - makes it harder to override the *Adaptee* behavior. 
  It will require subclassing *Adaptee* and making *Adapter* refer to the subclass rather than the *Adaptee* itself.

----

## Author and Date 

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.

----

## More Examples

- `java.util.Arrays#asList()`
- `java.util.Collections#list()`
- `java.util.Collections#enumeration()`
- `javax.xml.bind.annotation.adapters.XML*Adapter*`