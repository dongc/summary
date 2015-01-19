##Function as first-Class thing

means that something is just a value.
function is one that can go anywhere.<br/>
therefore a first-class function has a similar nature


- stored in a variable
<pre><code>
var fortytwo = function() { return 42 };
</code></pre>

- stored in an array slot
<pre><code>
var fortytwos = [42, function() { return 42 }];
</code></pre>

- stored in an object field
<pre><code>
var fortytwos = {number: 42, fun: function() { return 42 }};
</code></pre>

- A number can be created as needed and so can a function
<pre><code>
42 + (function() { return 42 })();
//=> 84
</code></pre>

- passed to a function
<pre><code>
function weirdAdd(n, f) { return n + f() }
weirdAdd(42, function() { return 42 });
//=> 84
</code></pre>

- returned from a function
<pre><code>
return 42;
return function() { return 42 };
</code></pre>




