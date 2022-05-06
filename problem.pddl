(define (problem switcheroo-problem)
	(:domain switcheroo)
	(:objects u1 u2 u3 u4 u5 d1 d2 d3 d4)
	(:init
		(upper u1 u2 u3 u4 u5)
        (lower d1 d2 d3 d4)

        (slash u1 u2)
        (slash u1 d1)

        (slash u2 u1)
        (slash u2 d1)
        (slash u2 d2)
        (slash u2 u3)

        (slash u3 u2)
        (slash u3 d2)
        (slash u3 d3)
        (slash u3 u4)

        (slash u4 u3)
        (slash u4 d3)
        (slash u4 d4)
        (slash u4 u5)

        (slash u5 u4)
        (slash u5 d4)

        (slash d1 u1)
        (slash d1 u2)
        (slash d1 d2)

        (slash d2 u2)
        (slash d2 u3)
        (slash d2 d1)
        (slash d2 d3)

        (slash d3 u3)
        (slash d3 u4)
        (slash d3 d4)
        (slash d3 d2)

        (slash d4 u4)
        (slash d4 u5)
        (slash d4 d3)

        (red u1)
        (red u2)
        (red d1)
        (red d2)

        (white u3)

        (blue u4)
        (blue u5)
        (blue d3)
        (blue d4)
	)
	(:goal
		(and
            (blue u1)
            (blue u2)
            (blue d1)
            (blue d2)
    
            (white u3)
    
            (red u4)
            (red u5)
            (red d3)
            (red d4)
		)
	)
)