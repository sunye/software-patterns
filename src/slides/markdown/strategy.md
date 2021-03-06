# Strategy
### [Gamma et al. 95]

----

## Intent

- Define a family of algorithms, encapsulate each one, and make them interchangeable. 
- Strategy lets the algorithm vary independently from clients that use it.

----

## Context

- Use the strategy pattern when:
  - there are many related classes that differ only on their behavior. Strategy provides means to configure a class with different behaviors.
  - you need different variants of an algorithm.
  - an algorithm uses properties that clients should not access.
  - a class defines many behaviors, which appear as multiple conditional statements in its operations.

note:
Use the Strategy pattern when:
- many related classes differ only in their behavior. Strategies provide a way to configure a class with one of many behaviors.
- you need different variants of an algorithm. For example, you might define algorithms reflecting different space/time trade-offs. Strategies can be used when these variants are implemented as a class hierarchy of algorithms [HO87].
- an algorithm uses data that clients shouldn't know about. Use the Strategy pattern to avoid exposing complex, algorithm-specific data structures.
- a class defines many behaviors, and these appear as multiple conditional statements in its operations. Instead of many conditionals, move related conditional branches into their own Strategy class.

----

## Motivation Example

- A sorted list, with different sort algorithms.
- The sort algorithm may be replaced at runtime. 

----

## Motivation Example

![](resources/png/strategy-example.png)

----

## Structure

![](resources/png/strategy-structure.png)

- Strategy defines an interface for a family of algorithms.
- Each concrete strategy implements a different algorithm
- The context defines the current algorithm and provides property access to algorithms.



----

## Consequences

- Hierarchies of Strategy classes define a family of algorithms or behaviors for contexts to reuse.
- Provides an alternative to subclassing. 
- Eliminates the use of conditional statements
- Provides different implementations of the same behavior.
- A client must understand how Strategies differ before it can select the appropriate one.
- Communication overhead between Strategy and Context.
- Object proliferation.

----

## Implementation Tradeoffs

- Defining the Strategy and Context interfaces. 
  - The Strategy and Context interfaces must give a ConcreteStrategy efficient access to any data it needs from a context, and vice versa.
- Strategies as template parameters. 
  - In C++ templates can be used to configure a class with a strategy. 

----

## Author and Date

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.

----

## More Examples

----

### `java.util.Comparator`

![](resources/png/cd-comparator.png)

----

### `javax.servlet.http.HttpServlet`

![](resources/png/cd-httpservlet.png)


