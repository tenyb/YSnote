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
> myfuntion()  ==   window.myfunction()



