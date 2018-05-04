# RuntimeDemo
iOS开发·runtime原理与实践: 消息转发篇(Message Forwarding) (类，对象，方法，消息传递，消息转发)

# 摘要

编程，只了解原理不行，必须实战才能知道应用场景。本系列尝试阐述runtime相关理论的同时介绍一些实战场景，而本文则是本系列的**消息转发**篇。**本文中**，第一节将介绍方法消息发送相关的概念，第二节将总结一下2. 动态特性：方法解析和消息转发（Method Resolution，Fast Rorwarding，Normal Forwarding），第三节将介绍方法交换几种的实战场景：特定奔溃预防处理（调用未实现方法），苹果系统迭代造成API不兼容的奔溃处理，第四节将总结消息转发的机制。

# 简书对应地址

[iOS开发·runtime原理与实践: 消息转发篇(Message Forwarding) (类，对象，方法，消息传递，消息转发)](https://www.jianshu.com/p/2fd4b930588e)
