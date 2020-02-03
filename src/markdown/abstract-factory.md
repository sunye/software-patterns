# Abstract Factory

### [Gamma et al. 95] 

----

## Intent

- Provide an interface for creating interrelated object families, without specifying their concrete classes.

----

## Motivation

- Consider, for instance, an application that runs on different graphic systems (e.g. Motif, Presentation Manager)
- Each graphic element (window, button, etc.) must be created differently, depending on the system used.
- To do this, an abstract class is used to create the graphic elements

----

## Motivation - example

![](resources/png/abstract-factory-example.png)

----

## Applicability

- Use an abstract factory when:
  - A system must be independent of how its products are created, composed and represented
  - A system must choose one of several product families

----

- Use an abstract factory when:
  - The objects of a family must be used together, and we want to reinforce this constraint.
  - We want to propose a library of products, without showing their implementation

----

## Structure

![](resources/png/abstract-factory-structure.png)

----

## Consequences

- Clients do not know the implementation classes of the families
- Switching between product groups becomes simple
- The consistency within a product family is enhanced
- It is difficult to add new product families.

----

## Implementation Tradeoffs

- Factories are *singletons*
- Factories define an interface, which can be implemented by a *prototype* or by a *factory method*
- Definition of extensible factories

----

## Author and Date 

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.
