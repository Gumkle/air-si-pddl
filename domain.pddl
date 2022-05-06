(define
	(domain switcheroo)
	(:requirements :adl)
	(:predicates 
     (upper ?a ?b ?c ?d ?e)   ;; górna linia pozioma na planszy złożona z pięciu pól
     (lower ?a ?b ?c ?d)      ;; dolna linia pozioma na planszy złożona z czterech pól
     (slash ?a ?b)            ;; linie skośne na planszy złożone z dwóch pól
     (red ?a)
     (blue ?a)
     (white ?a)
 )
	(:action swap
		:parameters (?from ?to)
		:precondition
		(and
			(not (white ?from))
			(white ?to)
			(slash ?from ?to)
		)
		:effect
		(and
			(when
				(red ?from)
				(and (red ?to) (not (red ?from)))
			)
			(when
				(blue ?from)
				(and (blue ?to) (not (blue ?from)))
			)
		    (white ?from)
		    (not (white ?to))
		)
	)
)