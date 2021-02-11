# Façade
### [Gamma et al. 95]

----

## Intent

- Provide a unified interface to a set of interfaces in a subsystem. 
- Facade defines a higher-level interface that makes the subsystem easier to use. 

----

## Motivation

- Structuring a system into components/subsystems helps reduce complexity.
- A common design goal is to minimize the communication and dependencies between components.
- One way to achieve this goal is to introduce a facade object that provides a single, simplified interface to the more general facilities of a component.

----

## Example

![](resources/png/facade-example.png)

----

## Applicability

- Use a façade when you want to:
  - provide a simple interface for a component. 
  - reduce dependency between clients and implementation classes.

----
## Structure

![](resources/png/facade-structure.png)

----

## Example

![](resources/png/facade-design-pattern.png)

----

## Consequences

- Client only need to know one class from the whole subsystem.
- Coupling between clients and implementation classes is reduced.
- The Façade alone cannot prevent clients from accessing subsystem implementation classes. 

----

## Implementation Tradeoffs

- Implement the Facade as an abstract class with concrete subclasses for different implementations of a subsystem.
- Use concrete subclasses for different implementations of a subsystem. 

----

## Author and Date


----

## More Examples

----

### `javax.faces.context.FacesContext`

  - Façade for `LifeCycle`, `ViewHandler`, `NavigationHandler` and many more without that the enduser has to worry about.

### `javax.faces.context.ExternalContext`

  - Façade for `ServletContext`, `HttpSession`, `HttpServletRequest`, `HttpServletResponse`, etc.





