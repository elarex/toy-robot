To run

`ruby ./dash.rb`

If you are using a Ruby version manager, set the version here

`./.ruby_version`

It is at `3.0.0` at time of writing

To switch to manual commangs, just flip to the other function at the bottom of dash.rb

```
# Dash.go()

Dash.auto()
```

## Files ##

`Dash.auto` will do a random placement and walk
`Dash.go` will start at 0,0,NORTH by default and them allow the expected inputs


Description:

`dash.rb` The main execution loop

`table.rb` A table abstraction where the robot will walk. I've opted to to a numeric implementation of an arbitrarily sized table (5x5 by default).
The 2-dimentional array implementation seems a bit trivial, but would be possible with minor modifications. I wanted to showcase how a logical mapping on a numerical space could be done, instead of a concrete positional assignment in arrays.

To change the dimensions just set the constants in the class

```
  DIM_X = 5
  DIM_Y = 5
```

`robot.rb` Stores only the direction and links to the table it exists on, for convenience.

`actions.rb` A module to abstract the robot actions out of it's class. This is a showcase of understanding Ruby afterall.


## Examples ##

Random walk on a 5x5 table

```
$ ruby ./dash.rb
"Starting at:"
"0,2,EAST"
:move
"1,2,EAST"
:move
"2,2,EAST"
:left
"2,2,NORTH"
:right
"2,2,EAST"
:right
"2,2,SOUTH"
:right
"2,2,WEST"
```

Random walk on a 9x11 table

```
$ ruby ./dash.rb
"Starting at:"
"3,10,NORTH"
:right
"3,10,EAST"
:right
"3,10,SOUTH"
:right
"3,10,WEST"
:left
"3,10,SOUTH"
:left
"3,10,EAST"
:right
"3,10,SOUTH"
:right
"3,10,WEST"
:left
"3,10,SOUTH"
:right
"3,10,WEST"
:left
"3,10,SOUTH"
:left
"3,10,EAST"
:right
"3,10,SOUTH"
:move
"1,9,SOUTH"
:right
"1,9,WEST"
```
