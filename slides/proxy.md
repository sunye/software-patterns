# Proxy
### [Gamma et al. 95]

----

## Intent

- Provide a surrogate or placeholder for another object to control access to it.

----

## Motivation

- One reason to control the access to an object is to defer the cost of its creation and initialization 
- For instance, in a text editor, images in document are not needed when it is opened and the first page is opened.

----

## Motivation - Example (1/2)

![](resources/png/proxy-example.png)

----

## Motivation - Example (2/2)

![](resources/png/proxy-instances.png)

----

## Solution

- Use a lightweight proxy object, that implements the same interface as the object you want to control.
- Use this proxy object as a substitute for the controlled object. Let it create (and destroy) the other only when needed.

----

## Structure

![](resources/png/proxy-structure.png)

----

## Applicability

- Local representation for a distant object (remote proxy).
- Create expensive objects on demand (virtual proxy).
- Control the access to an object (protection proxy).
- Smart pointers (smart pointers).

----

## Consequences

- A remote proxy can hide the fact that an object resides in a different address space. 
- A virtual proxy can perform optimizations such as creating an object on demand. 
- Both protection proxies and smart references allow additional housekeeping tasks when an object is accessed.

----

## Implementation Tradeoffs

- Operator (->)  overload in C++.
- Use of  the “doesNotUnderstand” method in Smalltalk.

----

## Author and Date

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.