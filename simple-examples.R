## function with data ----
## make a function (i.e. method) with data stored inside it
Add = function(a) {
  function(x) x + a
}
meth = Add(10)
meth(2)
a = 100
meth(2)
meth = Add(2)
meth(2)
environment(meth)$a
print(meth)

## object with data and function ----
## make an environment (i.e. object) with both data and methods
Add = function(a) {
  add = function(x) x + a
  environment()
}
object = Add(10)
names(object)
object$add(2)
a = 100
object$add(2)
object = Add(10)
object$add(2)
object$a


## public data issues ----
## make an environment (i.e. object) with both data and methods,
## where data are public
Add = function(a) {
  add = function(x) x + a
  environment()
}
object = Add(10)
names(object)
object$add(2)
a = 100
object$add(2)
object = Add(10)
object$add(2)
object$a  ## data are public ...
object$a = "hello"  ## ... so they can get screwed up
object$add(2)  ## error


## private data issues ----
## make an environment with a public method and private data,
## so that the user can't screw things up in that way
Add = function(a) {
  self = new.env(parent = emptyenv())
  self$add = function(x) x + a
  self
}
object = Add(10)
names(object)
object$add(2)
a = 100
object$add(2)
object = Add(10)
object$add(2)
object$a  ## users can't get hold of this field ...
environment(object$add)$a ## ... unless they know where to look


## getters and setters ----
## make an environment with public methods that can work with
## private data in a developer-controlled manner (i.e. getters and setters)
Add = function(a) {
  self = new.env(parent = emptyenv())
  private = environment()
  private$assert_a = function(a) {
    if (!is.numeric(a)) stop("field, a, must be numeric")
    if (length(a) != 1L) stop("field, a, must contain a single number")
    a
  }
  self$set_a = function(a) {
    private$a = private$assert_a(a)
  }
  self$get_a = function() private$a
  self$add = function(x) x + private$a
  self
}
object = Add(10)
names(object)
object$add(2)
a = 100
object$add(2)
object = Add(10)
object$add(2)
object$a
object$get_a()
object$set_a(1000)
object$get_a()
object$add(2)
object$set_a("hello")  ## we get the error before trying to add


## inheritance ----
## inheritance: add a multiply method
## note: could have different private environments for different methods.
##       so when you inherit you need to be specific
MultiplyOrAdd = function(a) {
  public = Add(a) ## inherit public methods
  private = environment(public$add) ## inherit private data
  public$multiply = function(x) x * private$a ## new method (the old one is inherited)
  public
}
object = MultiplyOrAdd(500)
object$add(3)
object$multiply(3)
