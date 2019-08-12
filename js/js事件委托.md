

# JS事件委托

> UseCapture：true 事件捕捉
> body --> div   事件从上往下执行

> UseCapture: false  事件冒泡
> div --> body    事件从下往上执行


```
//当useCapture为默认false时,为事件冒泡
<body>
    <div id="div1"></div>
</body>

window.onload = function(){
    let body = document.querySelector('body');
    let div1 = document.getElementById('div1');
    body.addEventListener('click',function(){
        console.log('打印body')
    })
    div1.addEventListener('click',function(){
        console.log('打印div1')
    })
}

//结果:打印div1  打印body
```

```
//当useCapture为true时,为事件捕获
<body>
    <div id="div1"></div>
</body>

window.onload = function(){
    let body = document.querySelector('body');
    let div1 = document.getElementById('div1');
    body.addEventListener('click',function(){
        console.log('打印body')
    },true)
    div1.addEventListener('click',function(){
        console.log('打印div1')
    })
}

//结果:打印body   打印div1
```


### 事件委托的优点:

> 提高性能:每一个函数都会占用内存空间，只需添加一个事件处理程序代理所有事件,所占用的内存空间更少。
> 动态监听:使用事件委托可以自动绑定动态添加的元素,即新增的节点不需要主动添加也可以一样具有和其他元素一样的事件。
例子解析:


