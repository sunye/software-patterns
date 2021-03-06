# Layers 
## Architectural Pattern
### [Bushmann 96]

----
## Context

- The system has different levels of abstraction 
- Typical flow: requests go down, notifications go back up 
- It is possible to define stable interfaces between layers 
- Layers may be added or changed over time

----
## Solution

- Partition the system in layers.
- Start with the lowest level.
- Build higher layers on top.
- Keep the same level of abstraction within a layer.
- No component can spread over two layers.
- Keep lower layers leaner.
- Specify interfaces for each layer.
- Handle errors at lowest layer possible.

----
## Example

![](resources/png/layers.png)
<!-- .element: style="width: 600px;"-->

note:
- Other example: Java !

----
## Advantages

- Layers are reusable.
- Standardization of tasks and interfaces 
- Only local dependencies between layers 
- Programmers and users can ignore other layers 
- Different programming teams can handle each layer

----
## Limitations

- Cascades of changing behavior
- Lower efficiency of data transfer 
- Difﬁcult to choose granularity of layers 
- Difﬁcult to understand the entire system


