# Observer

### [Gamma et al. 95] 

----

## Intent

- An observer defines a dependency relationship between objects so that, when the state of an object changes, all its dependents are automatically notified and updated

----

## Motivation

- A frequent side effect of partitioning a system into a collection of cooperating classes is the need to maintain consistency between interconnected objects.
- We don't want consistency to be achieved by closely linked classes, because this would reduce their reusability

----

## Motivation Example

![](resources/png/observer-example.png)

----

## Applicability

- Use the Observer pattern when:
  - When a concept has two different and dependent aspects (e.g. interface and business data)
  - The encapsulation of these aspects in separate classes allows them to vary and be reused independently

----

## Structure

![](resources/png/observer-structure.png)

----

## Consequences

- The subject does not know its observers (nor their quantity)
- Unexpected updates: it is hard to know the actual cost of an update

----

- New observers can be added without changing the subject nor the other observers.
- Abstract coupling between the subject and the observers:
  - The subject is not interested in the observer class
  - A subject and an observer can belong to different levels of a system (see the Proxy pattern)

----

## Implementation Trade-offs

- The association between the subject and the observer may vary: collection, dictionary, etc.
- Observation of more than one observer
- Triggering the notification (subject, customer)
- Subject destruction management

----

- Different notification protocols:
  - Push and Pull
  - Observation of certain aspects of the subject (selective notification)

----

- Encapsulation of the complex semantics of updating:
  - if an operation modifies different subjects, notify observers only at the end
  - use a change manager

----

## Change Manager

![](resources/png/change-manager.png)

----

## Author and Date 

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.