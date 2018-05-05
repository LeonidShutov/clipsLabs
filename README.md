# clipsLabs
CLIPS labs

Покупка цифрового фотоаппарата.<br />
Разработать ЭС, которая помогает определиться с покупкой цифрового фотоаппарата.<br />
Факты:<br />
	•	Производитель фотоаппарата – SYMBOL <CANON | NIKON> == Brand<br />
	•	Объектив в комплекте – SYMBOL <DA | NET> == Lens<br />
	•	Количество лет гарантии – NUMBER == YearWarranty<br />
	•	Цена – NUMBER == Price<br />
	•	Количество мегапикселей матрицы – NUMBER == MegaPixels<br />
	•	Цвет корпуса – SYMBOL <BLACK | NONBLACK> == Color<br />
Проверить  стоит ли покупать (Brand, Lens, YearWarranty, Price, MegaPixels, Color)<br />
	•	Price < 1000 AND Lens = DA OR MegaPixels > 10 OR Color = Black AND Brand = CANON  =>  Yes AND YearWarranty > 2<br />
	•	Price > 1000 OR Lens = NET OR MegaPixels < 10 OR Color = Non AND Brand = NIKON  =>  No AND YearWarranty < 2<br />
<br />
Если Yes => «Купить»<br />
Если No => «Не покупать»<br />


	




