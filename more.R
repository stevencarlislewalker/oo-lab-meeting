# motivation
# ----------
# - how can we make design decisions that make it easier to add functionality to
#   existing software, as users provide feedback?
#
# - meeting the first deadline is easier if you do not think about the future
# - meeting subsequent deadlines are harder if you do not think about the future
#
# - users will ask for changes and you need to be ready
#   (although somehow i never am ... so who knows).

# resources
# ---------
# https://github.com/dev-marko/clean-code-book/blob/master/Clean%20Code%20(%20PDFDrive.com%20).pdf


# definitions
# -----------
#
# proc: procedural programming
# data structure: information stored in some pre-defined way (e.g. data frames,
#                 argument lists, sparse matrices).
# functions: something that creates data structures based on other
#            data structures.
#
# oop: object-oriented programming
# object: collection of data structures and functions that can implicitly
#         utilize these data.
#
# constructor: a function that creates a data structure or an object.





















# design principle
# ----------------
# oop:  easy to add/change data structures but difficult to add/change functions.
# proc: easy to add/change functions but difficult to add/change data structures.


















# illustrative examples
# ---------------------
# - alternative approaches to the same toy problem:
#   - proc-shapes.R
#   - oop-shapes.R
#
# - nothing is hard in toy examples.
#   - in real projects, it is more difficult to make changes.
#   - harder in real projects to keep program components independent.
#
# - when components are not independent, changes to one component could
#   influence other components in ways that are hard to maintain.
#
# - maintenance issues include
#   - adjusting existing code to work with the new functionality
#   - ensuring that adjustments will not change existing functionality
#
# - thinking ahead about whether you are more likely to need to change
#   functions or data structures could help make better design decisions.
#
# - meeting the first deadline is easier if you do not think about the future
# - meeting subsequent deadlines are harder if you do not think about the future
#
# - users will ask for changes and you need to be ready
#   (although somehow i never am ... so who knows).

