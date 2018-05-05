
(deftemplate PhotoState
    (slot Brand
        (type SYMBOL)
        (default ?DERIVE)
    )
    (slot Lens
        (type SYMBOL)
        (default ?DERIVE)
    )    
    (slot YearWarranty
        (type NUMBER)
        (default ?DERIVE)
    )
    (slot Price
        (type SYMBOL)
        (default ?DERIVE)
    )
    (slot MegaPixels
        (type NUMBER)
        (default ?DERIVE)
    )
    (slot Color
        (type SYMBOL)
        (default ?DERIVE)
    )
)

(defrule NoBuy 
    (PhotoState
        (Price ?price)
        (YearWarranty ?warranty)
        (MegaPixels ?pixels)
    )   
    (and  
        (test(> ?price 1000))
        (PhotoState(Brand NIKON))
        (test(< ?warranty 2))
    )        
    (or
        (test(< ?pixels 10))
        (PhotoState(Lens NET))        
        (PhotoState(Color NonBlack))
    )  
    
    =>
    (assert (NoBuy))
)

(defrule Buy      
     (PhotoState
        (Price ?price)
        (YearWarranty ?warranty)
        (MegaPixels ?pixels)
     )   
    (and  
        (test(< ?price 1000))
        (PhotoState(Brand CANON))
        (PhotoState(Lens DA))        
        (test(> ?warranty 2))
    )        
    (or
        (test(> ?pixels 10))
        (PhotoState(Color Black))
    )  
    
    =>
    (assert (Buy))
)


(defrule PrintBuy
    (Buy)
    => 
    (printout t "Buy it!" crlf)
)


(defrule PrintDontBuy
    (NoBuy)
    =>
    (printout t "Don't buy it!" crlf)
)