# Shapes Example (object-oriented)
#
# - different types
#   - i.e. different shapes
#   - start with two types (square and circle)
#
# - different functions
#   - i.e. different things we can do with shapes
#   - start with one function (area)
#
# - get told by users:
#   - we need another shape (rectangle)
#   - we need another function (perimeter)


















# code file: constructor for squares
Square = function(
    top_left_x = 0
  , top_left_y = 0
  , side = 1
) {
  shape = environment()
  area = function() shape$side^2
  return(shape)
}

# code file: constructor for circles
Circle = function(
    centre_x = 0
  , centre_y = 0
  , radius = 1
) {
  shape = environment()
  area = function() pi * shape$radius^2
  return(shape)
}































# script:
#   - compute the areas of a small square and a big circle
#   - depends on the above files
small_square = Square(side = 0.001)
big_circle = Circle(radius = 1000)
small_square$area()
big_circle$area()






















# users now want a rectangle
#   - a new shape
#   - nothing above changes
#   - just add a new code file
#   - this is fantastic from a maintenance perspective

# new code file: constructor for rectangles

Rectangle = function(
    top_left_x = 0
  , top_left_y = 0
  , height = 1
  , width = 2
) {
  shape = environment()
  area = function() shape$height * shape$width
  return(shape)
}

rectangle = Rectangle()
rectangle$area()






























# users now want to compute the perimeter of shapes
#   - a new function
#   - now i need to change the above code
#   - this is not ideal from a maintenance perspective
#   - this change requires no _new_ files, and only involves modifying
#     _existing_ files -- not ideal
#   - when we modify existing files, there is a chance of breaking something
#     that depends on them
