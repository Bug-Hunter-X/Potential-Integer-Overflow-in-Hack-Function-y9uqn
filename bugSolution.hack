```hack
function foo(x: int): int {
  if (x >= INT_MAX -1) { //check for potential overflow in foo
    return INT_MAX;
  }
  return x + 1;
}

function bar(x: int): int {
  if (x >= INT_MAX / 2) { //check for potential overflow in bar
    return INT_MAX;
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  if (bar(x) <= 0) { //check for potential underflow in baz
    return 0;
  }
  return bar(x) - 1;
}

function main(): void {
  var x: int = 2147483645; // Example large input value
  var y: int = baz(x);
  echo y;
}
```