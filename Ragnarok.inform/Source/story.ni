"Ragnarok" by Marissa Takebayashi

Use no scoring.

When play begins: say "  "

The Portal Room is a room. " "

The statue is scenery in the Portal Room. " "

The pole is in the Portal Room. " "

Understand "staff" as pole.

The bookshelf is scenery in the Portal Room. " "

The old book is in the bookshelf. The old book has a number called the last page read. The old book has a number called the length. The length of the old book is 6."An ancient book that seems to be about the various myths and places in these worlds."

Understand "ancient book" or "book" as old book.

Understand the command "read" as something new.

Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing.

Understand "read [number] in/from/of [something]" or "read page [number] in/from/of [something]" or "look up page [number] in/from/of [something]" or "consult page [number] in/from/of [something]" as reading it in. Reading it in is an action applying to one number and one thing.

Named page is a kind of value. The named pages are first page, last page, next page, previous page.
To decide what number is the effective value of (L - last page): 
    decide on the length of the book.
To decide what number is the effective value of (F - first page): 
    decide on 1.
To decide what number is the effective value of (N - next page): 
    let X be the last page read of the book plus 1; 
    decide on X.
To decide what number is the effective value of (P - previous page): 
    let X be the last page read of the book minus 1; 
    decide on X.

Understand "read [named page] in/from/of [something]" or "read the [named page] in/from/of [something]" as reading it relatively in. Reading it relatively in is an action applying to one named page and one thing.

Does the player mean reading something in the old book: it is very likely.

This is the book requirement rule: 
    if the player is not carrying the old book, say "You're not reading anything." instead.

Check reading it relatively in: 
    if the second noun is not the old book, say "There are no pages in [the second noun]." instead; 
    abide by the book requirement rule.

Carry out reading it relatively in: 
    let N be the effective value of the named page understood; 
    now the number understood is N; 
    try reading N in the book.

Check reading it in: 
    if the second noun is not the old book, say "There are no pages in [the second noun]." instead; 
    abide by the book requirement rule.

Check reading it in: 
    if the number understood is greater than the length of the old book, say "There are only [length of old book in words] pages in the book." instead; 
    if the number understood is less than 1, say "The page numbering begins with 1." instead.

Carry out reading it in: 
    read page number understood.

Check reading: 
    if the noun is not the old book, say "There are no pages in [the noun]." instead; 
    abide by the book requirement rule.

Table of Book Contents
page	content
1	"[bold type] About the Ragnarok. [roman type]"
2	"[bold type] About the Underworld. [roman type]"
3	"[bold type] About Midgard. [roman type]"
4	"[bold type] About the Forest. [roman type]"
5	"[bold type] About Valhalla. [roman type]"
6	"[bold type] About Asgard. [roman type]"
	
To read page (N - a number): 
	now the last page read of the old book is N;
	if there is a content corresponding to a page of N in the Table of Book Contents: 
        		choose row with a page of N in the Table of Book Contents; 
        		say "You read: '[content entry]'[paragraph break]"; 
	otherwise: 
        		say "Page [N] appears to be blank."

To read page (N - 4):
	if player is not carrying map:
		say "Part of the book seems to be unreadable as of now. Maybe you will be able to read this farther along your adventure.";
		stop the action;
	otherwise:
		choose row with a page of N in the Table of Book Contents;
		say "You read: '[content entry]'[paragraph break]"

To read page (N - 5):
	if Heimdallr is not carrying Gjallarhorn:
		say "Part of the book seems to be unreadable as of now. Maybe you will be able to read this farther along your adventure.";
		stop the action;
	otherwise:
		choose row with a page of N in the Table of Book Contents;
		say "You read: '[content entry]'[paragraph break]"
		
To read page (N - 6):
	if player is not carrying the golden key:
		say "Part of the book seems to be unreadable as of now. Maybe you will be able to read this farther along your adventure.";
		stop the action;
	otherwise:
		choose row with a page of N in the Table of Book Contents;
		say "You read: '[content entry]'[paragraph break]"
		
Mood is a kind of value. The moods are unhappy, pleased, and suspicious. People have mood. The mood of Heimdallr is unhappy.

Heimdallr is a man in the Portal Room. the description of Heimdallr is "A large, rather intimidating man. He looks [the mood of Heimdallr]. When asked, he says that he is missing Gjallarhorn, the horn from the river Gjoll."

Instead of attacking Heimdallr:
	end the game saying "It wasn't a very smart choice to attack a god. You find yourself unable to continue your adventure."

Understand "man" as Heimdallr.

Instead of giving Gjallarhorn to Heimdallr:
	now Heimdallr is pleased;
	move Gjallarhorn to Heimdallr;
	say "Heimdallr looks [the mood of Heimdallr]. He decides to open the large gate for you."

The large gate is south of Valhalla and north of the Portal Room. The large gate is a door. The description of the large gate is " "

Valhalla is a room." "

Before going to Valhalla:
	if Heimdallr is not carrying Gjallarhorn:
		say "It seems Heimdallr doesn't want you going in there.";
		stop the action;
	otherwise:
		move player to Valhalla
		
The map is a thing in Valhalla. "A map of Midgard and its surrounding forests, there seems to be a clearning pointed out just south of Midgard."

Understand "centerpiece" as map.

Asgard is a room. " "

Asgard's Gate is east of Asgard and west of Valhalla. Asgard's Gate is a door. Asgard's Gate is locked and lockable. The golden key unlocks Asgard's Gate. The description of Asgard's Gate is " "

The Underworld is a room. It is south of the Portal Room. " "

Hel's Gate is scenery in the Underworld. 

Instead of examining Hel's Gate:
	say " ";
	move metal barb to player.

The metal barb is a thing. The description of the metal barb is " "

The fishing pole is a thing. The description of the fishing pole is " "

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Instead of combining metal barb with pole:
	say "You combine the metal barb and the pole to make a fishing pole.";
	remove metal barb from play;
	remove pole from play;
	move the fishing pole to player.

Instead of combining pole with metal barb: 
	say "You combine the pole and the metal barb to make a fishing pole."; 
	remove metal barb from play; 
	remove pole from play; 
	move the fishing pole to player.

Gjoll is scenery in the Underworld. " "

Gjallarhorn is a thing in Gjoll. " "

Understand "horn" as Gjallarhorn.

Before taking Gjallarhorn:
	if player is carrying the fishing pole:
		say " ";
		move Gjallarhorn to player;
	otherwise:
		say "Gjallarhorn is at the bottom of the river, your arms are too short to reach it from here. Maybe if you had something to fish it out of the river...";
		stop the action.

Midgard is a room. It is west of the Portal Room. " "

Before going to Forest Clearing:
	if player is not carrying map:
		say "The forest looks thick and unwelcoming. It would be foolish to enter without a map.";
		stop the action;
	otherwise:
		say "You successfully navigate through the winding path, finding the forest clearing pointed out on the map.";
		move player to Forest Clearing.

The Forest Clearing is a room. It is south of Midgard. " "

The golden key is in the Forest Clearing. " "


