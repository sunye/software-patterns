# Decorator
### [Gamma et al. 95]

----

## Intent

- Dynamically add a behavior to an object.
- Propose a flexible alternative to inheritance.

note:

Attach additional responsibilities to an object dynamically. 
Decorators provide a flexible alternative to subclassing for extending functionality 

----

## Motivation 

- Occasionally, we want to add a behavior only to certain objects of a class.

![](resources/png/decorator-example.png)

[Gamma 95]

<!--  .element: style="font-size: small; text-align: center;" -->

----

## Motivation - Example (1/2)

![](resources/png/decorator-classes.png)

----

## Motivation - Example (2/2)

![](resources/png/decorator-instances.png)

----

## Applicability (1/2)

- Use the decorator pattern when you want to:
  - add a behavior to an object dynamically and transparently. 
  - add a behavior that can be removed later.

note:
to add responsibilities to individual objects dynamically and transparently, that is, without affecting other objects. 
for responsibilities that can be withdrawn. 

----

## Applicability (2/2)

- Use the decorator pattern when the creation of subclasses is impractical.

note:
Sometimes a large number of independent extensions are possible and would produce an explosion of subclasses to support every combination.  
Or a class definition may be hidden or otherwise unavailable for subclassing. 

----

## Structure

![](resources/png/decorator-structure.png)

- **/Component**: the object we want to add behavior to
- **/Decorator**: the object that adds behavior to the component.


----

## Consequences

- More flexible than inheritance.
- Prevents the creation of complex/heavy classes on the top of a class hierarchy.
- Components and decorators are not identical: comparison may not work as expected.
- Explosion of small objects.

note:
- more flexible: one can add twice the same behavior!!!
- Component classes REMAIN small.

----

## Implementation Tradeoffs

- Interface conformance: components and decorators must implement the same interface.
- Omission of the abstract Decorator class.
- Lightweight component classes: since decorators specialize the component, the latter should have the less properties as possible.

----

## Authors and Date

- «Design Patterns: Elements of Reusable Object-Oriented Software.» Erich Gamma, Richard Helm,Ralph Johnson, and John Vlissides. Addison Wesley. October 1994.

----

## More Examples

----

## Starbuzz Coffee


![](resources/patterns/starbuzz-problem.jpg)

[Bates et al. 2009]

<!--  .element: style="font-size: small; text-align: center;" -->

----

![](resources/patterns/starbuzz-class-explosion.png)

[Bates et al. 2009]

<!--  .element: style="font-size: small; text-align: center;" -->

----

![](resources/patterns/starbuzz-decorator.png)

[Bates et al. 2009]

<!--  .element: style="font-size: small; text-align: center;" -->

----
## Java I/O

![](resources/patterns/java-input-stream.png)

```java
InputStream is = new FileInputStream(file);
DataInputStream dis = new DataInputStream(is);
BufferedInputStream bis = new BufferedInputStream(dis);
```

----

### `FilterInputStream.java`

```java
public class FilterInputStream extends InputStream {
    protected volatile InputStream in;
	
    protected FilterInputStream(InputStream in) {
        this.in = in;
    }
	
    public int read() throws IOException {
        return in.read();
    }
	
	//(...)

```

----

## Java Collections Framework

![](resources/patterns/java-list.png)

```java
List<String> tags = new ArrayList();
List<String> synchronizedTags = Collections.synchronizedList(tags);
List<String> readOnlyTags = Collections.unmodifiableList(tags);

```


----