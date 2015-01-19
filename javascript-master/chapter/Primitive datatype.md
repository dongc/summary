##Primitive datatype
Primitive datatype stored in memory statck.It's value is literally copied.Even if change the original value,the copied value remians unchanged.

- string
- number
- boolean
- undefined
- null

When a primitive value is used as if it were an object created by a constructor, JavaScript converts it to an object in order to respond to the expression at hand,but then discards the object qualities and changes it back to a primitive value. In the code below, I take primitive values and showcase what happens when the values are treated like objects

*Live code,as Follows:*
<pre><code>
var pstr="123";
pstr.toString();
//pstr =>Object =>primitive

var pnum=123;
pnum.toString();
//pnum =>Object =>primitive

var ostr=new String("123");
ostr.toString();
//ostr =>primitive


var onum=new Number(123) ;
onum.toString();
//onum =>primitive
</code></pre>
