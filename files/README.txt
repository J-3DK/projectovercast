Project Overcast
================

This is a complete, self-contained copy of the Minecraft 1.6.4 + Forge dev
environment Project Overcast was built in, including its own Java 8 runtime.
Nothing else needs to be installed.

To play:
1. Extract this whole folder somewhere (keep everything together - the
   "tools" and "forge" folders both need to stay next to the launcher).
2. Double-click "Launch Project Overcast.bat".
3. An updater window appears - press Update to grab any new files, or just
   close it to skip straight to the game.
4. First launch may take a little longer while things warm up.

This starts its own game instance separate from any normal Minecraft
installation - it won't touch or conflict with anything else on your
computer. Your world save is your own; it starts fresh.

Everything below is baked in and works out of the box - no extra setup,
no mods folder to manage.

PLAYING TOGETHER
----------------

Whoever hosts opens their world, presses Esc, and picks "Open to LAN". This
build always hosts on port 25565 (vanilla picks a random one each time),
so the address stays the same every session.

  - Same house / same Wi-Fi: everyone else connects to the host's local
    address, e.g. 192.168.1.223:25565
  - Over the internet: the host needs a tunnel (playit.gg) or a forwarded
    port; friends then use whatever address that gives them.

The host's game has to stay open - it IS the server - and everyone must be
running this same package.

WHAT'S IN IT
------------

Survival systems
  - Happiness meter with a face icon on the left of the screen. Drops in
    the dark and at low health; rises outdoors, near animals, and near a
    playing jukebox. Low happiness gives you Slowness and Nausea.
  - Sanity meter (bottom right). Drains in real darkness, near hostile
    mobs, and near dead bodies. At low sanity you start hearing things
    that aren't there. In the red, your face icon changes.
  - To get sanity back: sleep a full night (big one-off boost), stand in
    a well-lit spot with nothing hostile around, keep animals nearby, or
    play a record. These stack, so a lit base with music holds you
    together even with trouble outside.
  - /sanity shows your current sanity.

Mining overhaul
  - Mining natural blocks (stone, dirt, sand, gravel, all ores) drops a
    "Loose" version that falls like gravel and must be SMELTED before it's
    usable. Silk touch bypasses this.
  - So you don't get stuck at the start: Loose Cobblestone can build a
    furnace and all the stone tools directly, and Loose Coal Ore works
    straight in the torch recipe.
  - Gravel no longer drops flint by chance. Instead, put 1 gravel OR 1
    Loose Gravel in the crafting grid to get 2 flint.

Items
  - Base (2 sticks) - the handle for most crude gear
  - Crude Spear / Iron Spear - damage scales with your running speed, and
    hits much harder if you attack while falling
  - Needle, Charcoal Dust, Pateru
  - Floating damage numbers when you hit something

Music
  - Crude Jukebox, plus Fever, Rainin, Crude Disc "Green" and Crude Disc
    "Blue". The crude discs only play in the Crude Jukebox, and vanilla
    discs only play in the vanilla one.

Blocks
  - Drawer - 5 slots of storage
  - Shutter - right-click to open/close; blocks light when shut
  - Fence - mobs can't break it and you can't jump over it

Other changes
  - Zombies break through walls to reach you (slower on harder blocks)
  - Wooden tools break after 2 uses
  - Chests now cost an iron ingot in the middle
  - Swords no longer block when you right-click
  - Dead players leave a body behind. Standing near one drains both
    happiness and sanity. To get rid of one, hold right-click on it with
    any sword for about 20 seconds to chop it up.


CRAFTING RECIPES
----------------

SHAPELESS means position doesn't matter - just drop the items anywhere in
the grid. SHAPED means the layout matters exactly as drawn, where "." is
an empty slot.


Shapeless
.........

  Base                    2 Sticks
  Crude Spear             1 Flint + 1 Base
  Iron Spear              1 Iron Ingot + 1 Base
  Pateru                  1 Milk Bucket + 1 Sugar Cane

  Needle (makes 8)        1 Iron Ingot
  Needle (makes 1)        3 Flint

  Charcoal Dust (makes 4) 1 Charcoal

  Shutter                 4 Base
  Fence                   9 Base

  Flint (makes 2)         1 Gravel
  Flint (makes 2)         1 Loose Gravel

  Blank Crude Disc        8 Charcoal Dust + 1 Paper

  Music Disc "Fever"      4 Coal + 4 Gold Nugget + 1 Yellow Dye
  Music Disc "Rainin"     4 Coal + 4 Gold Nugget + 1 Pink Dye

  Crude Disc "Green"      1 Blank Crude Disc + 4 Needle + 1 Green Dye
  Crude Disc "Blue"       1 Blank Crude Disc + 4 Needle + 1 Blue Dye
                          (blue dye = lapis lazuli)


Shaped
......

  DRAWER - 5 slots of storage        CRUDE JUKEBOX - plays Crude Discs
    Base    .       Base               Base    Planks  Base
    .       Log     .                  Planks  Needle  Planks
    Base    .       Base               Base    Planks  Base

    (any wood type of log)             (any wood type of planks)


Loose Cobblestone shortcuts
...........................
You need a furnace to smelt Loose Cobblestone into real Cobblestone - but a
furnace needs cobblestone. These let you skip that trap. "LC" = Loose
Cobblestone, "LCO" = Loose Coal Ore.

  FURNACE                 STONE PICKAXE           STONE AXE
    LC   LC   LC            LC    LC    LC          LC    LC    .
    LC   .    LC            .     Stick .           LC    Stick .
    LC   LC   LC            .     Stick .           .     Stick .

  STONE SWORD             STONE SHOVEL            STONE HOE
    .     LC    .           .     LC    .           LC    LC    .
    .     LC    .           .     Stick .           .     Stick .
    .     Stick .           .     Stick .           .     Stick .

  TORCH (makes 4)
    .     LCO   .
    .     Stick .


Furnace / smelting
..................
Everything you mine comes out "Loose" and has to be smelted.

  Loose Cobblestone    ->  Cobblestone
  Loose Dirt           ->  Dirt
  Loose Sand           ->  Sand
  Loose Gravel         ->  Gravel

  Loose Coal Ore       ->  Coal
  Loose Redstone Ore   ->  Redstone
  Loose Lapis Ore      ->  Lapis Lazuli
  Loose Diamond Ore    ->  Diamond
  Loose Emerald Ore    ->  Emerald
  Loose Quartz Ore     ->  Nether Quartz

  Loose Iron Ore       ->  Iron Ore  (then smelt again for the ingot)
  Loose Gold Ore       ->  Gold Ore  (then smelt again for the ingot)

Iron and gold take TWO smelts - the loose block becomes the ore block,
which you then smelt into the ingot as normal.


Changed vanilla recipe
......................

  CHEST - now costs an iron ingot
    Planks  Planks  Planks
    Planks  Iron    Planks
    Planks  Planks  Planks

    (the middle slot used to be empty)
