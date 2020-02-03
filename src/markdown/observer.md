# Observer

### [Gamma et al. 95] 

----

## Intent

- An observer defines a dependency relationship between objects so that, **when the state of an object changes**, all its dependents are automatically *notified and updated*.

----

## Motivation

- A frequent side effect of partitioning a system into a collection of cooperating classes is the need to **maintain consistency** between interconnected objects.
- We don't want consistency to be achieved by closely linked classes, because this would reduce their reusability

----

## Motivation Example

![](resources/png/observer-example.png)

----

## Applicability

- Use the *Observer* pattern when:
  - When a concept has two different and dependent aspects (e.g. interface and business data),
  - The encapsulation of these aspects in separate classes allows them to vary and be reused independently.

----

## Structure

![](resources/png/observer-structure.png)

----

## Consequences

- The *subject* does not know any detail about its *observers* (nor their quantity)
- **Unexpected updates**: it is hard to know the actual cost of an update (ie. what happens when `update` is called?)

----

- New observers can be added without changing the subject nor the other observers.
- *Abstract coupling* between the subject and the observers:
  - The subject is not interested in the observer class,
  - A subject and an observer can belong to different levels of a system (see the *Proxy* pattern).

----

## Implementation Trade-offs

- The association between the *subject* and the *observer* may take many forms: collection, dictionary, etc.
- Observation of more than one *subject*,
- Different ways to trigger the notification (*subject*, customer),
- *Subject destruction management*: should observers be destroyed when the subject is destroyed? or simply notified?

----

- Different notification protocols:
  - Two main possibilities:
    - Either **Push** (the *observer* receive information about the change that occurred and can use it directly) 
    - Or **Pull** (the *observer* only knows that something changed, and then needs to discover by itself what changed)
  - Observation of certain aspects of the subject (selective notification), ie. possibility to **subscribe** to specific changes in the subject

----

- Encapsulation of the complex semantics of updating:
  - if an operation modifies different subjects, it can be better to notify observers only at the end,
  - use a **change manager** (see next slide).

----

## Change Manager

![](resources/png/change-manager.png)

----

## Author and Date 

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.