 gml_pragma("global", "init()");

//item
enum ITEM {
	APPLE,
	BERRY,
	WOOD,
	STONE,
	IRON,
	GLASS,
	AREIA,
	VIDRO,
	
	VIDROS,
	GLASSS,
	//crafts
	POTION,
	BLOCK_WOOD,
	BLOCK_IRON,
	SYRUP,
}

global.invSprite[ITEM.APPLE] = spr_appleinv;
global.invSprite[ITEM.BERRY] = spr_berryinv;
global.invSprite[ITEM.IRON] = spr_ironinv;
global.invSprite[ITEM.STONE] = spr_stoneinv;
global.invSprite[ITEM.WOOD] = spr_woodinv;


initItem(ITEM.APPLE, "fruta", spr_apple, []);
initItem(ITEM.BERRY, "frutinha", spr_berry, []);
initItem(ITEM.WOOD, "madeira", spr_wood, []);
initItem(ITEM.STONE, "pedra", spr_stone, []);
initItem(ITEM.IRON, "ferro", spr_iron, []);
initItem(ITEM.AREIA, "areia", spr_areia, []);
initItem(ITEM.VIDROS, "vidro", spr_vidro_1, []);
initItem(ITEM.GLASSS, "recipiente", spr_glass_1, []);

initItem(ITEM.GLASS, "recipiente", spr_glass, [
	[ITEM.VIDRO, 3]
]);

initItem(ITEM.VIDRO, "vidro", spr_vidro, [
	[ITEM.AREIA, 3],
	[ITEM.WOOD, 3]
]);

initItem(ITEM.POTION, "elixir", spr_potion, [
	[ITEM.APPLE, 3],
	[ITEM.GLASS ,1]
]);

initItem(ITEM.SYRUP, "suco", spr_suco, [
	[ITEM.BERRY, 5],
	[ITEM.GLASS, 1]
]);

initItem(ITEM.BLOCK_WOOD, "madeirsa", spr_wood_1, [
	[ITEM.WOOD, 3]
]);

#macro INV_SIZE 18

//CRAFTING MENU
global.craftingMenu = [
	"CRAFTING",
	"Status",
	ITEM.GLASS,
	ITEM.VIDRO,
	
	"Criar",
	ITEM.POTION,
	ITEM.SYRUP
	
];