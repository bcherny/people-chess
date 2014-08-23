
# options
HEIGHT = 8
WIDTH = 8
CONTAINER = document.body.querySelector '.board'

class Piece
	constructor: (@x, @y, @color) ->

		@element = document.createElement 'div'

		@element.classList.add 'piece', @color, @name

		@element

	validate: ->
		true

	move: (x, y) ->

		if @validate x, y

			[@x, @y] = [x, y]


class King extends Piece

	name: 'king'

	validate: ->

class Queen extends Piece

	name: 'queen'

	validate: ->

class Bishop extends Piece

	name: 'bishop'

	validate: ->

class Knight extends Piece

	name: 'knight'

	validate: ->

class Rook extends Piece

	name: 'rook'

	validate: ->

class Pawn extends Piece

	name: 'pawn'

	validate: ->



###

	init

###

a = 1
b = 2
c = 3
d = 4
e = 5
f = 6
g = 7
h = 8

pieces = [

	# black
	new Rook a, 8, 'black'
	new Knight b, 8, 'black'
	new Bishop c, 8, 'black'
	new Queen d, 8, 'black'
	new King e, 8, 'black'
	new Bishop f, 8, 'black'
	new Knight g, 8, 'black'
	new Rook h, 8, 'black'
	new Pawn a, 7, 'black'
	new Pawn b, 7, 'black'
	new Pawn c, 7, 'black'
	new Pawn d, 7, 'black'
	new Pawn e, 7, 'black'
	new Pawn f, 7, 'black'
	new Pawn g, 7, 'black'
	new Pawn h, 7, 'black'

	# white
	new Rook a, 1, 'white'
	new Knight b, 1, 'white'
	new Bishop c, 1, 'white'
	new Queen d, 1, 'white'
	new King e, 1, 'white'
	new Bishop f, 1, 'white'
	new Knight g, 1, 'white'
	new Rook h, 1, 'white'
	new Pawn a, 2, 'white'
	new Pawn b, 2, 'white'
	new Pawn c, 2, 'white'
	new Pawn d, 2, 'white'
	new Pawn e, 2, 'white'
	new Pawn f, 2, 'white'
	new Pawn g, 2, 'white'
	new Pawn h, 2, 'white'
]

generate_board = (container, width, height) ->

	[1..height].forEach (y) ->

		row = generate_row y

		[1..width].forEach (x) ->

			square = generate_square x, y

			row.appendChild square

		container.appendChild row


generate_square = (x, y) ->

	square = document.createElement('div')

	square.classList.add('square')

	# black/white squares
	if (x%2 is 1 && y%2 is 1) or (x%2 isnt 1 && y%2 isnt 1)
		square.classList.add('odd')
	else
		square.classList.add('even')

	square

generate_row = (y) ->

	row = document.createElement('div')

	row.classList.add('row', 'row-' + y)

	row


















# TODO: add support for multiple boards on one page
generate_board CONTAINER, WIDTH, HEIGHT

pieces.forEach (piece) ->

	rows = CONTAINER.querySelectorAll '.row'
	row = rows[piece.y - 1]
	squares = row.querySelectorAll '.square'
	square = squares[piece.x - 1]

	square.appendChild piece.element