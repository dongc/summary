/**
 * Created by dongc on 14-5-4.
 */

// stored in a variable
var f = 42;
var f1 = function () {
    return 42
};

// stored in an array slot
var arr1 = [42, function () {
    return 42
}];

// stored in an object field
var object1 = {number: 42, fun: function () {
    return 42
}};

// A number can be created as needed and so can a function
42 + (function () {
    return 42
})();

// passed to a function as arguments
function add(n, f) {
    return n + f()
};

add(42, function () {
    return 42
});


// returned from a function
function print42() {
    return 42
};
print42();

function print42() {
    return function () {
        return 42
    }
}
print42()();