# Shapes Example (procedural)
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
Square = function(side = 1, top_left_x = 0, top_left_y = 0) {
  structure(
      list(side = side, top_left_x = top_left_x, top_left_y = top_left_y)
    , class = "Square"
  )
}

# code file: constructor for circles
Circle = function(radius = 1, centre_x = 0, centre_y = 0) {
  structure(
      list(radius = radius, centre_x = centre_x, centre_y = centre_y)
    , class = "Circle"
  )
}

# code file: a function that gives the area of a valid shape
area = function(shape) UseMethod("area")
area.Square = function(shape) shape$side^2
area.Circle = function(shape) pi * shape$radius^2






























# script
#   - compute the areas of a small square and a big circle
#   - depends on the above files
small_square = Square(side = 0.001)
big_circle = Circle(radius = 1000)
area(small_square)
area(big_circle)





























# users now want to compute the perimeter of shapes
#   - a new function
#   - nothing above changes
#   - just add a new code file
#   - this is fantastic from a maintenance perspective
perimeter = function(shape) UseMethod("perimeter")
perimeter.Square = function(shape) 4 * shape$side
perimeter.Circle = function(shape) 2 * pi * shape$radius

perimeter(small_square)
perimeter(big_circle)































# users now want a rectangle
#   - a new shape
#   - now i need to change the above code
#   - this is not ideal from a maintenance perspective
#   - it is easy to just add a new constructor -- but i do need to modify
#     the existing functions

Rectangle = function(height = 1, width = 1, top_left_x = 0, top_left_y = 0) {
  structure(
      list(height = height, width = width, top_left_x = top_left_x, top_left_y = top_left_y)
    , class = "Rectangle"
  )
}
