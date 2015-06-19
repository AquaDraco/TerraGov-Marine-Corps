///**************COLONIAL MARINES GEAR CONVERSION TO NEW BAY- LAST EDIT: 21DEC2014 BY APOPHIS775**************///


/**********************Marine Gear**************************/

//MARINE COMBAT LIGHT

/obj/item/device/flashlight/combat
	name = "Combat Flashlight"
	desc = "A Flashlight designed to be held in the hand, or attached to a rifle"
	icon_state = "flashlight"
	item_state = "flashlight"
	var/attachable = 0  //Can this be attached to another weapon or device?
	brightness_on = 7 //luminosity when on

/obj/item/device/flashlight/combat/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/screwdriver))
		if(attachable)
			attachable = 0
			usr << "\red You screw the side panel on [src] closed. It can no longer be attached!"
		else if(!attachable)
			attachable = 1
			usr << "\red You screw open the side panel on [src], which can now be attached!"
	return
/*
/obj/item/weapon/gun/projectile/Assault/attackby(var/obj/item/A as obj, mob/user as mob)
	if(istype(A, /obj/item/device/flashlight/combat))
		var/obj/item/device/flashlight/combat/F = A
		if(F.attachable)
			src.contents += A
			user << "\red You attach [A] to [src]."
			haslight = 1
			del(A)
	return
*/


//MARINE ENCRYPTION KEYS

/obj/item/device/encryptionkey/mcom
	name = "Marine Command Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "MP" = 1, "Alpha" = 0, "Bravo" = 0, "Charlie" = 0, "Delta" = 0)
/*
/obj/item/device/encryptionkey/mhaz
	name = "Hazteam Echo Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "hop_cypherkey"
	channels = list("Hazteam Echo" = 1)
*/
/obj/item/device/encryptionkey/malphal
	name = "Alpha Leader Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "hop_cypherkey"
	channels = list("Alpha" = 1, "Command" = 1)

/obj/item/device/encryptionkey/mbravol
	name = "Bravo Leader Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "hop_cypherkey"
	channels = list("Bravo" = 1, "Command" = 1)

/obj/item/device/encryptionkey/mcharliel
	name = "Charlie Leader Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "hop_cypherkey"
	channels = list("Charlie" = 1, "Command" = 1)

/obj/item/device/encryptionkey/mdeltal
	name = "Delta Leader Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "hop_cypherkey"
	channels = list("Delta" = 1, "Command" = 1)

/obj/item/device/encryptionkey/malp
	name = "Alpha Squad Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "eng_cypherkey"
	channels = list("Alpha" = 1)

/obj/item/device/encryptionkey/mbra
	name = "Bravo Squad Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "cypherkey"
	channels = list("Bravo" = 1)

/obj/item/device/encryptionkey/mcha
	name = "Charlie Squad Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "sci_cypherkey"
	channels = list("Charlie" = 1)

/obj/item/device/encryptionkey/mdel
	name = "Delta Squad Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "hos_cypherkey"
	channels = list("Delta" = 1)

/obj/item/device/encryptionkey/mmpo
	name = "Military Police Radio Encryption Key"
	desc = "An encyption key for a radio headset.  Contains cypherkeys."
	icon_state = "rob_cypherkey"
	channels = list("MP" = 1)

//MARINE HEADSETS

/obj/item/device/radio/headset/mcom
	name = "marine command radio headset"
	desc = "This is used by the marine command. Channels are as follows: :v - marine command, :p - military police, :q - alpha squad, :b - bravo squad, :c - charlie squad, :d - delta squad."
	icon_state = "med_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mcom
	frequency = 1461

/obj/item/device/radio/headset/malphal
	name = "marine alpha leader radio headset"
	desc = "This is used by the marine alpha squad leader. Channels are as follows: :v - marine command, :b - alpha squad."
	icon_state = "cargo_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/malphal
	frequency = 1461

/obj/item/device/radio/headset/malpha
	name = "marine alpha radio headset"
	desc = "This is used by  alpha squad members. Channels are as follows: :q - alpha squad."
	icon_state = "sec_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/malp
	frequency = 1461

/obj/item/device/radio/headset/mbravol
	name = "marine bravo leader radio headset"
	desc = "This is used by the marine bravo squad leader. Channels are as follows: :v - marine command, :b - bravo squad."
	icon_state = "cargo_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mbravol
	frequency = 1461

/obj/item/device/radio/headset/mbravo
	name = "marine bravo radio headset"
	desc = "This is used by bravo squad members. Channels are as follows: :b - bravo squad."
	icon_state = "eng_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mbra
	frequency = 1461

/obj/item/device/radio/headset/msulaco
	name = "marine radio headset"
	desc = "A standard Sulaco radio headset"
	icon_state = "cargo_headset"
	item_state = "headset"
	frequency = 1461

/obj/item/device/radio/headset/mcharliel
	name = "marine charlie leader radio headset"
	desc = "This is used by the marine charlie squad leader. Channels are as follows: :v - marine command, :c - charlie squad."
	icon_state = "cargo_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mcharliel
	frequency = 1461

/obj/item/device/radio/headset/mcharlie
	name = "marine charlie radio headset"
	desc = "This is used by charlie squad members. Channels are as follows: :c - charlie squad."
	icon_state = "rob_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mcha
	frequency = 1461

/obj/item/device/radio/headset/mdeltal
	name = "marine delta leader radio headset"
	desc = "This is used by the marine delta squad leader. Channels are as follows: :v - marine command, :d - delta squad."
	icon_state = "cargo_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mdeltal
	frequency = 1461

obj/item/device/radio/headset/mdelta
	name = "marine delta radio headset"
	desc = "This is used by delta squad members. Channels are as follows: :d - delta squad."
	icon_state = "com_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mdel
	frequency = 1461

/obj/item/device/radio/headset/mmpo
	name = "marine military police radio headset"
	desc = "This is used by marine military police members. Channels are as follows: :p - military police."
	icon_state = "cargo_headset"
	item_state = "headset"
	keyslot2 = new /obj/item/device/encryptionkey/mmpo
	frequency = 1461



//MARINE RADIO

/obj/item/device/radio/marine
	frequency = 1461

//MARINE CONTAINERS

/obj/item/weapon/storage/box/beanbags
	name = "box of beanbag shells"
	desc = "A box of 12 gauge beanbag rounds. Manufactured by Armat Systems for prison guard and police use in non-lethal pacification."
	icon_state = "beanshells"
	storage_slots = 14
	can_hold = list(
		"/obj/item/ammo_casing/shotgun",
		)
	New()
		..()
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)


/obj/item/weapon/storage/box/shotguns
	name = "box of shotgun shells"
	desc = "A box of standard issue high-powered 12 gauge buckshot rounds. Manufactured by Armat Systems for military and civilian use."
	icon_state = "shells"
	w_class = 2
	storage_slots = 14
	can_hold = list(
		"/obj/item/ammo_casing/shotgun",
		)

	New()
		..()
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)
		new /obj/item/ammo_casing/shotgun(src)

/obj/item/weapon/storage/box/incendiary
	name = "box of shotgun shells"
	desc = "A box of incednairy rounds. Manufactured by Armat Systems for military and civilian use."
	icon_state = "incendiary"
	w_class = 2
	storage_slots = 14
	can_hold = list(
		"/obj/item/ammo_casing/shotgun",
		)

	New()
		..()
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)
		new /obj/item/ammo_casing/shotgun/incendiary(src)

/obj/item/weapon/storage/box/explosive_mines
	name = "mine box"
	desc = "A secure box holding anti-personel proximity mines"
	icon_state = "minebox"
	w_class = 3
	storage_slots = 4
	can_hold = list(
		"/obj/item/device/mine"
		)

	New()
		..()
		contents = list()
		sleep(1)
		new /obj/item/device/mine(src)
		new /obj/item/device/mine(src)
		new /obj/item/device/mine(src)
		new /obj/item/device/mine(src)
		return

/obj/item/weapon/coin/marine
	name = "marine specialist weapon token"
	desc = "Insert this into a specialist vendor in order to access a single highly dangerous weapon."
	icon_state = "coin_adamantine"

	attackby(obj/item/weapon/W as obj, mob/user as mob) //To remove attaching a string functionality
		return

/obj/structure/broken_apc
	name = "M577 Armored Personnel Carrier"
	desc = "A large, armored behemoth capable of ferrying marines around. \nThis one is sitting nonfunctional for repairs."
	anchored = 1
	opacity = 1
	density = 1
	icon = 'icons/Marine/apc.dmi'
	icon_state = "apc"

/obj/structure/largecrate/random
	name = "supply crate"

	New()
		spawn(1)
			var/i = rand(0,3)

			while(i)
				if(!i)
					break
				i--
				var/obj/item/thing = pick(/obj/item/weapon/cell/high,
								/obj/item/weapon/storage/belt/utility/full,
								/obj/item/device/multitool,
								/obj/item/weapon/crowbar,
								/obj/item/device/flashlight,
								/obj/item/weapon/reagent_containers/food/snacks/donkpocket,
								/obj/item/weapon/grenade/smokebomb,
								/obj/item/device/paicard,
								/obj/item/weapon/airlock_electronics,
								/obj/item/device/assembly/igniter,
								/obj/item/weapon/weldingtool,
								/obj/item/weapon/wirecutters,
								/obj/item/device/analyzer,
								/obj/item/clothing/under/marine_jumpsuit,
								/obj/item/clothing/under/marine_underoos,
								/obj/item/clothing/shoes/marine)
				new thing(src)