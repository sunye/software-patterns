#Message Queueing
##Concurrency Pattern
###[Douglass 2002]

----
## Intent

- Provide a simple mechanism for information exchange between threads.
- Avoid race conditions.

note:
A race condition is an undesirable situation that occurs when a device or system attempts to perform two or more operations at the same time, but because of the nature of the device or system, the operations must be done in the proper sequence in order to be done correctly.

----
## Context

- Asynchronous communication.
- A multithread system, where threads must:
  - synchronize to exchange informations.
  - avoid race condition situations during information exchange.

----
## Structure

![](resources/png/message-queueing-structure.png)

----
## Consequences

- Information shared among threads is passed by value to the separate thread.
- Simple mechanism used by most real-time systems.
- Relatively heavy.
