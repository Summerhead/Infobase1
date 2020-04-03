
Процедура ОбработкаПроведения(Отказ, Режим) 
	Движения.ОстаткиМатериалов.Записывать = Истина;
	Движения.СтоимостьМатериалов.Записывать = Истина;
	Для Каждого ТекСтрокаМатериалы Из Материалы Цикл
		// регистр ОстаткиМатериалов Приход
		Движение = Движения.ОстаткиМатериалов.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Материал = ТекСтрокаМатериалы.Материал;
		Движение.НаборСвойств = ТекСтрокаМатериалы.НаборСвойств;
		Движение.Склад = Склад;
		Движение.Количество = ТекСтрокаМатериалы.Количество;		
		// регистр СтоимостьМатериалов Приход
		Движение = Движения.СтоимостьМатериалов.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Материал = ТекСтрокаМатериалы.Материал;
		Движение.Стоимость = ТекСтрокаМатериалы.Сумма;	
	КонецЦикла;
КонецПроцедуры
