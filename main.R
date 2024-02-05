# 1. main idea -- encapsulation: functions and data glued together.
#      - functional:      f(x)
#      - object-oriented: x$f()
#
# 2. standard approach in r (S3) keeps functions and data separate.
#    not necessarily a bad thing, but not the kind of thing that you
#    will see in the wild.
#
# 3. but S3 does have oo properties other than encapsulation
#      - polymorphism : a single interface for different types of objects.
#                       or maybe it means functions can behave differently
#      - inheritance : functions and data can inherit properties from other
#                      functions and data
#
# 3. many object oriented approaches in r, some of them do glue functions
#    and data together.
#
# 4. my non-standard view: you can do encapsulation in r without needing to
#    learn any of these other oo systems, but instead use just S3 with another
#    standard r thing called environments.
#
# 5. potential benefits:
#      - save memory (pass by reference)
#      - keeping track of user sessions (maintain state)
#      - manage external resources like databases (maintain state)
#      - keeping argument lists small (encapsulation)
#
# 6. disadvantages:
#      - debugging is different
#      - boilerplate
#      - race-conditions
#      - being weird
#      - only useful in package development really -- not for people who
#        just want to analyze data
