# Composite
### [Gamma et al. 95] 

----

## Intent

- Compose objects into tree structures to represent part-whole hierarchies.  
- Let clients treat individual objects and compositions of objects uniformly. 

----

## Motivation

- Occasionally, some applications (e.g. graphic editor) need to deal with primitive objects and container objects, i.e., objects containing other objects.
- Clients want to treat identically primitive and container objects.

----

## Motivation - example

![](resources/png/composite-example.png)

----

## Motivation - example


![](resources/png/composite-instances.png)

----

## Applicability

- Use the Composite pattern when:
  - you want to represent *part-whole* hierarchies of objects. 
  - you want clients **to be able to ignore the difference between compositions of objects and individual objects**. Clients will treat all objects in the composite structure uniformly.


----

## Structure 

![](resources/png/composite-structure.png)

----

## Consequences

- Clients treat equally composite or atomic structures.
- Clients are simplified.
- It is easy to add new components.
- The solution is sometimes too general (composite accepts any component).

note:
Clients are simplified, since they don’t have to deal with 2 different structures. 

----

## Implementation Tradeoffs

- **Explicit reference to the parent**: sometimes the *Component* may need to know the *Composite* that contains it (if any).
- **Sharing components**: sometimes a *Component* may be possessed by multiple *Composites* − can influence the behavior or the destruction of *Composites*.
- **Where to define operations to add/remove components?**: 
  - *Component* class? Possible error if not called on a *Composite*.
  - *Composite* class? Need to type check  beforehand.
- **The Composite may contain a *cache*** to store information on the sum of components it contains.

----

## Author and Date 

- Design Patterns: Elements of Reusable Object-Oriented Software. Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.

----

## More Examples

----

### `java.awt.Container`

![](resources/png/cd-container.png)

----

## Files and Folders

![](resources/png/cd-file.png)