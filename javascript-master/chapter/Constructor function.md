##Constructor function

Constructor function create multiple objects that share certain qualities and behaviors.Constructor function like cookie cutter.
Specific constructor function like cookie cutter templdate

###Native/Built-in Object Constructor

- Number()
- String()
- Boolean()
- Object()
- Array()
- Function()
- Date()
- RegExp()
- Error()

> **Notes**<br/>
> 
> `Math()` is a static object for other methods.<br/>

*Refer to ECMAScript,as Follows:*
<pre><code>
Math = {};

/**
@param {number} x
@static
@return {number}
*/
Math.abs = function(x) {};
</code></pre>


####Array()
#####Array.sort(comparator)
- when comparator empty，Array#sort method does string comparison(**ASCII**)
<pre><code>
[1,2,21,3,-4].sort();
//=> -4, 1, 2, 21, 3
</code></pre>
- self-define comparator
<pre><code>
[1,2,21,3,-4].sort(function(x,y){
    if(x < y){return -1};
    if(x > y){return  1};
    return 0;
});
//=> -4,1,2,3,21
</code></pre>
<pre><code>
var employees=[]
employees[0]={name:"George", age:32, retiredate:"March 12, 2014"}
employees[1]={name:"Edward", age:17, retiredate:"June 2, 2023"}
employees[2]={name:"Christine", age:58, retiredate:"December 20, 2036"}
employees[3]={name:"Sarah", age:62, retiredate:"April 30, 2020"}
// retiredate ASC
employees.sort(function(a, b){
 return new Date(a.retiredate)- new Date(b.retiredate)
})
// age ASC
employees.sort(function(a, b){
 return a.age-b.age
})
</code></pre>

> **Notes**<br/>
> 
>**“undefined”** always compares greater than any other value <BR/>
>**“undefined”** property values always sort to the end of the result

#####Array.forEach(callback)
The Array#forEach method, added in the fifth edition of the **ECMA-262** language standard,<br/>
take **callback** function and passes each array element to the function.

*Speed Compare and optimize,calculate the sum total of 10 million,As Follows:*

- [Index] locate element
<pre><code>
console.time("[Index] locate element");
var total2 = 0;
for (var i = 0; i &lt; e1.length; i++) {
    total2 = total2 + e1[i];
}
console.timeEnd("index locate element");
//=> [Index] locate element: 160.000ms 
</code></pre>

- Through parameter pass,Call function
<pre><code>
 /** defined function **/
function iterator(group) {
   var total0 = 0;
    for (var i = 0; i &lt; group.length; i++) {
        total0 = total0 + group[i];
    }
}
console.time("function call");
iterator(e1);
console.timeEnd("function call");
//=> function call: 180.000ms 
</code></pre>

- javascript native forEach()
<pre><code>
console.time("js native forEach");
var total1 = 0;
e1.forEach(function (item) {
    total1 = total1 + item;
});
console.timeEnd("js native forEach");
//=> js native forEach: 567.000ms 
</code></pre>

- [for  in ] locate element
<pre><code>
console.time("for in locate element");
var total3 = 0;
for (var g in e1) {
    total3 = total3 + g;
}
console.timeEnd("for in locate element");
//=> for in locate element: 3054.000ms 
</code></pre>

###User-Defined constructor

> **Notes**<br/>
> 
> when user defined constructor function,<br/>
> best practice to make the first character
> of the constructer name **uppercase**


