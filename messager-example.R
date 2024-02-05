MakeOneTimeMessager = function(msg) {

  ## boilerplate
  public = new.env(parent = emptyenv())
  private = environment()

  ## fields
  private$on = TRUE

  ## methods
  public$display = function() {
    if (private$on) {
      message(msg)
      public$turn_off()
    }
  }
  public$turn_on = function() private$on = TRUE
  public$turn_off = function() private$on = FALSE

  ## set S3 class
  structure(public, class = "OneTimeMessager")
}

## S3 methods
print.OneTimeMessager = function(x, ...) x$display()

## state is maintained
once_friendly = MakeOneTimeMessager("hello there. nice to meet you.")

print(once_friendly)
print(once_friendly)

once_friendly$turn_on()
print(once_friendly)
print(once_friendly)

## advanced -- reason for `parent = emptyenv()` in the constructor definition
x = 1
get("x", envir = once_friendly)
