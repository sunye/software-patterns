# Reactor
## Concurrency Pattern
### [Schmidt95]

----
## Intent

- Handles service requests that are delivered concurrently to an application by one or more clients.

note:
The Reactor design pattern handles service requests that are 
delivered concurrently to an application by one or more 
clients.

Each service in an application may consist of several methods and is represented by a separate event handler that is responsible for dispatching service-specific requests. Dispatching of event handlers is performed by an initiation dispatcher, which manages the registered event handlers. Demultiplexing of service requests is performed by a synchronous event demultiplexer. 

----
## Context

- A server application of a distributed system that receives concurrent events from one or more clients.

----
## Forces

- **Availability**: the server must be available to handle requests.
- **Efficiency**: the server must minimize latency, maximize processing capacity and avoid using the processor unnecessarily.
- **Simplicity**: the server must be designed to simplify the use of different strategies of competition.
- **Adaptability**: the creation of new services should not change the format of messages.

----
## Solution

- Use an event dispatcher as the system core.

----
## Structure

![](resources/png/reactor-structure.png)

note:

Handlers - awt ActionListener
select() - indique les handles qui ont des événements disponibles.

----
## Consequences

- Non-preemptive
- Hard to debug

note:
non-preemptive : ne peut pas bloquer, sinon il bloque tout le monde. simplifie la gestion des ressources

----
## Know uses

- InterViews
- ACE
- CORBA ORB
- Apache XML Cocoon

note:

InterViews - C++ Graphical Interface Toolkit
ACE - Adaptive Communication Environment
Cocoon - web application framework


