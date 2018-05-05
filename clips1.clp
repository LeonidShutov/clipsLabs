(defrule ArithmeticDifficult 
    (add-difclt yes)
    (subst-difclt yes)
    (mult-difclt yes)
    (divide-difclt yes)    
=>
    (printout t "Arithmetic Difficults detected" crlf)
)
(defrule ArithmeticDifficult 
    (or
    
    		(add-difclt no)
    		(subst-difclt no)
    		(mult-difclt no)
    		(divide-difclt no)    
	)
=>
    (printout t "Arithmetic Difficults NOT detected" crlf)
)