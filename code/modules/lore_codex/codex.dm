// Inherits from /book/ so it can fit on bookshelves.
/obj/item/weapon/book/codex // Vorestation Edits throughout this object.
	name = "The Traveler's Guide to Human Space: Borealis Edition" //YW Edit
	desc = "Contains useful information about the world around you.  It seems to have been written for travelers to the Borealis system, human or not. It also \
	has the words 'Don't Panic' in small, friendly letters on the cover." //YW Edit
	icon_state = "codex"
	unique = TRUE
	var/datum/codex_tree/tree = null
	var/root_type = /datum/lore/codex/category/main_borealis_lore	//YW EDIT

/obj/item/weapon/book/codex/Initialize()
	tree = new(src, root_type)
	. = ..()

/obj/item/weapon/book/codex/attack_self(mob/user)
	if(!tree)
		tree = new(src, root_type)
	icon_state = "[initial(icon_state)]-open"
	tree.display(user)

/obj/item/weapon/book/codex/lore/vir // Vorestation Edits throughout this object.
	name = "The Traveler's Guide to Human Space: Borealis Edition" //YW Edit
	desc = "Contains useful information about the world around you.  It seems to have been written for travelers to the Borealis system, human or not. It also \
	has the words 'Don't Panic' in small, friendly letters on the cover." //YW Edit
	icon_state = "codex"
	root_type = /datum/lore/codex/category/main_borealis_lore	//YW EDIT
	libcategory = "Reference"

/obj/item/weapon/book/codex/lore/robutt
	name = "A Buyer's Guide to Artificial Bodies"
	desc = "Recommended reading for the newly cyborgified, new positronics, and the upwardly-mobile FBP."
	icon_state = "codex_robutt"
	root_type = /datum/lore/codex/category/main_robutts
	libcategory = "Reference"

/obj/item/weapon/book/codex/lore/news
	name = "Daedalus Pocket Newscaster"
	desc = "A regularly-updating compendium of articles on current events. Essential for new arrivals in the Borealis system and anyone interested in politics." //YW Edit
	icon_state = "newscodex"
	w_class = ITEMSIZE_SMALL
	root_type = /datum/lore/codex/category/main_news
	libcategory = "Reference"
	drop_sound = 'sound/items/drop/device.ogg'

/* //VORESTATION REMOVAL
// Combines SOP/Regs/Law
/obj/item/weapon/book/codex/corp_regs
	name = "NanoTrasen Regulatory Compendium"
	desc = "Contains large amounts of information on Standard Operating Procedure, Corporate Regulations, and important regional laws.  The best friend of \
	Internal Affairs."
	icon_state = "corp_regs"
	root_type = /datum/lore/codex/category/main_corp_regs
	throwforce = 5 // Throw the book at 'em.
	libcategory = "Reference"
*/