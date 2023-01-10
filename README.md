# Design-Patterns

## Delegation Pattern
## [ Delegation Pattern on YouTube](https://youtu.be/-rZIJxm8B0s)
[![](DelegationPattern/DelegationPattern/Resources/banner.png)](https://youtu.be/-rZIJxm8B0s)
its one of a <b>Behavioral Patterns</b> because it's all about objects communication[one-to-one] which consist of three parts:
- <b>Delegating object:</b> It’s the object that has a delegate. The delegate is usually held as a weak property to avoid a retain cycle.
- <b>Delegate protocol:</b> which defines the methods that the delegate should implement.
- <b>Delegate:</b> This is the helper object that implements the delegate protocol.

[![](Resources/DelegationPattern/Delegation-Pattern.png)](https://youtu.be/-rZIJxm8B0s)
<h6 align="left">Example 1 UML Digram:</h6>which represents communication between View Controller and its Service

[![](Resources/DelegationPattern/delegation-pattern-ex-1.png)]()

<h6 align="left">Example 2 UML Digram:</h6> which represents communication between View Controller and Presenter

[![](Resources/DelegationPattern/delegation-pattern-ex-2.png)]()

## Adapter Pattern
## [ Adapter Pattern on YouTube]()
[![](AdapterPattern/AdapterPattern/Resources/adapter-banner.png)]()

its one of a <b>Behavioral Patterns</b> which consist of four parts:
- <b>Client:</b> Object using an adapter and depends on the protocol
- <b>protocol:</b> which defines the methods we need 
- <b>Adaptee/legacy object:</b> cannot be modified directly so we need add extension or create new adapter
- <b>adapter:</b> which helps us to make the incompatible objects deal with each other

[![](AdapterPattern/AdapterPattern/Resources/AdapterPattern.png)]()
<h6 align="left">UML Digram's Example:</h6>

[![](AdapterPattern/AdapterPattern/Resources/AdapterPattern-example.png)]()
