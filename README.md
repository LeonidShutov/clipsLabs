# clipsLabs
CLIPS labs

Покупка цифрового фотоаппарата.
Разработать ЭС, которая помогает определиться с покупкой цифрового фотоаппарата.
Факты:
	•	Производитель фотоаппарата – SYMBOL <CANON | NIKON> == Brand
	•	Объектив в комплекте – SYMBOL <DA | NET> == Lens
	•	Количество лет гарантии – NUMBER == YearWarranty
	•	Цена – NUMBER == Price
	•	Количество мегапикселей матрицы – NUMBER == MegaPixels
	•	Цвет корпуса – SYMBOL <BLACK | NONBLACK> == Color
Проверить  стоит ли покупать (Brand, Lens, YearWarranty, Price, MegaPixels, Color)
	•	Price < 1000 AND Lens = DA OR MegaPixels > 10 OR Color = Black AND Brand = CANON  =>  Yes
	•	Price > 1000 OR Lens = NET OR MegaPixels < 10 OR Color = Non AND Brand = NIKON  =>  No

Если Yes => «Купить»
Если No => «Не покупать»


	




