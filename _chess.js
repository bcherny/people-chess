const
	HEIGHT = 8,
	WIDTH = 8,
	CONTAINER = document.body.querySelector('.board')

//////

const
	K = { name: 'King', html: { white: '♔', black: '♚' } },
	Q = { name: 'Queen', html: { white: '♕', black: '♛' } },
	B = { name: 'Bishop', html: { white: '♗', black: '' } },
	N = { name: 'Knight', html: { white: '', black: '♝' } },
	R = { name: 'Rook', html: { white: '♖', black: '♜' } },
	P = { name: 'Pawn', html: { white: '♙', black: '♟' } },
	n = null

const new_board = [
	[ R, N, B, Q, K, B, N, R ],
	[ P, P, P, P, P, P, P, P ],
	[ n, n, n, n, n, n, n, n ],
	[ n, n, n, n, n, n, n, n ],
	[ n, n, n, n, n, n, n, n ],
	[ n, n, n, n, n, n, n, n ],
	[ P, P, P, P, P, P, P, P ],
	[ R, N, B, K, Q, B, N, R ]
]


////// init //////


// TODO: add support for multiple boards on one page
generate_board (CONTAINER, WIDTH, HEIGHT)
generate_pieces (WIDTH, HEIGHT)


//////


function generate_board (container, width, height) {

	for (var x = width; x--;) {

		var row = generate_row(y)

		for (var y = height; y--;) {

			var square = generate_square(x, y)

			row.appendChild(square)

		}

		container.appendChild(row)

	}



}

function generate_square (x, y) {

	var square = document.createElement('div')

	square.classList.add('square')

	// black/white squares
	if (
		(x%2 === 1 && y%2 === 1)
	 || (x%2 !== 1 && y%2 !== 1)
	) {
		square.classList.add('odd')
	} else {
		square.classList.add('even')
	}

	return square

}

function generate_pieces (width, height) {

	for (var x = width; x--;) {
		for (var y = height; y--;) {

			// document.querySelect	or

		}
	}

}

function generate_row (y) {

	var row = document.createElement('div')

	row.classList.add('row', 'row-' + y)

	return row

}