//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["INFANTRY"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"2007 год. Лояльные афганские жители остановили наш конвой и сообщили, что в н.п. Anbar Tappeh (obj. Alpha) обосновались боевики ""Талибана"". Нам приказано выбить вражеские силы с obj. Alpha, чтобы наш конвой мог без препятствий продолжить движение."
END

TOPIC("А. Враждебные силы:")
"Боевики ""Талибана"" - Нерегулярные войска - примерно 2 взвода.
<br />Наличие станковых пулеметов.
<br />Наличие ПТО.
<br />82 мм миномет.
<br />
<br />Известно о минах на главной дороге.
<br />
<br />Возможно вражеское подкрепление."
END

TOPIC("Б. Дружественные силы:")
"Взвод 1-ого экспедиционного корпуса морской пехоты США.
<br />1'1 - 9 чел.
<br />1'2 - 9 чел.
<br />1'3 - 7 чел - отделение огневой поддержи.
<br />1'6 - 2 чел."
END

TOPIC("II. Задание:")
"1. Зачистить obj. Alpha. 
<br />2. Доставить MTVR-ы (Ammo и Repair) на regroup point. 
<br />3. Выдвинуться на regroup point."
END

TOPIC("III. Выполнение:")
"Нам предстоит выбить боевиков из н.п. Anbar Tappeh (obj. Alpha).
<br />Также доставить 2 MTVR (Ammo и Repair) на regroup point, для дальнейшей переброски. Остальная часть конвоя выдвинется следом за нами, после успешного выполнения задач.
<br />Лояльные афганцы рассказали об наличии мин на главной дороге, также замечены станковые пулеметы и пто.
<br />"
END

TOPIC("IV. Поддержка:")
"2x M1043A2 HMMWV (вооруженный M2).
<br />2x M1123 HMMWV (невооруженный).
<br />1x MTVR (невооруженный).
<br />
<br />Артиллерия:
<br />105mm гаубичная батарея.
<br />
<br />CCP.
<br />FARP."
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz
<br />SUP NET 51 Mhz
<br />
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3"
END

TOPIC("VI. Замечания:")
"В технике находиться: металлоискатель, киты для разминирования, взрывчатка.
<br />Технику, у которой стоят союзные юниты, трогать не надо.
<br />"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Есть миномет, по игрокам застывшим на позициях после огневого контакта или в прямой видимости врага, работать поактивнее.
<br />Есть вражеские подкрепления, активируются с двух сторон, активируются разными триггерами, если что помоги им."
END
};

ADD_TOPICS