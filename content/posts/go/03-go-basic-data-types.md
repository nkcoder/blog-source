---
title: Go的基本数据类型
date: 2021-02-26T13:26:16+08:00
categories:
- go
draft: true
---

### 整数 (Integer)

整数区分有符号和无符号，且有四种大小：8位、16位、32位、64位。

```go
int8, 	int16, 	int32,	int64		// 有符号
uint8, 	uint16,	uint32,	uint64	// 无符号
```

还有两种类型：`int`和`uint`，它们的大小相同，32位或64位，与平台有关，不同的编译器即使在相同的硬件上得到的结果可能也不相同。

`rune`类型是`int32`的同义词，表示该值是一个Unicode码点(*code point*)，`byte`是`uint8`的同义词，表示该值是原始数据(*raw data*)。

`uintptr`也是一个整型类型，但大小不确定，主要用于低级编程（如调用`C`语言库）。

`int`, `uint`, `uintptr`与带大小的类型如`int32`, `uint64`等都是不同的类型，即使底层的类型相同，一起使用时需要做类型转换。

有符号整数以2的补码表示，最高位是符号位。n位有符号整数的范围是：`-2^(n-1) ~ 2^(n-1)-1`，n位无符号整数的范围是`0 ~ 2^n-1`。

二元操作符按优先级分为5个级别，从上到下，优先级降低，同一优先级：

```go
* 	/ 	% 	<< 	>> 	& 	&^
+ 	-		|		^
== 	!=	<		<=	>		>=
&&
||
```
