### js的函数

``` js
// 自调函数
(function () {
	var x = "hello";
})();

```

```js
//通过 arguments 获取参数
x = sumAll(1, 123, 500, 115, 44, 88);

function sumAll() {
    var i, sum = 0;
    for (i = 0; i < arguments.length; i++) {
        sum += arguments[i];
    }
    return sum;
}
```
### 函数问题
> 定义的函数会自动成为窗口函数
>
>myfuntion()  ==   window.myfunction()


### call() 和 apply() 之间的区别

> 不同之处是：
>
> call() 方法分别接受参数。
>
>apply() 方法接受数组形式的参数。
>
>如果要使用数组而不是参数列表，则 apply() 方法非常方便。

```js
var person = {
  fullName: function(city, country) {
    return this.firstName + " " + this.lastName + "," + city + "," + country;
  }
}
var person1 = {
  firstName:"John",
  lastName: "Doe"
}
person.fullName.apply(person1, ["Oslo", "Norway"]);
```
```js
var person = {
  fullName: function(city, country) {
    return this.firstName + " " + this.lastName + "," + city + "," + country;
  }
}
var person1 = {
  firstName:"John",
  lastName: "Doe"
}
person.fullName.call(person1, "Oslo", "Norway");
```





