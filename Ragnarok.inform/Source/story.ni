"Ragnarok" by Marissa Takebayashi

Use no scoring.

When play begins: say "You wake up in a strange room, not entirely knowing why you are here, or even where you are. There isn't much in the room to suggest why you are here, maybe you can find something in this room to help you remember."

The Portal Room is a room. "A mostly empty room. The walls are all a bland grey and there are no windows. There is a bookshelf leaning against one of the walls. [paragraph break] To the south is the Underworld, Midgard it to the west, and there is a large gate to the north."

The statue is a thing in the Portal Room. The description is "A large stone statue of a tall bearded man holding a staff. It looks like part of the statue is starting to fall off. You can just make out hairline cracks near the hand holding the staff."

Understand "stone statue" as statue.

The pole is a thing. "A long stone pole. It looks much heavier than it actually is."

Understand "staff" as pole.

Instead of attacking the statue: 
    	move pole to player; 
    	say "You reach up and break off the staff that the statue was holding. It is a lot heavier than you expected, but still manageable."

Instead of taking the pole, say "you are going to need to use more force to do that."
	
Instead of taking the statue:
	say "That is way too large to carry."

The bookshelf is a thing in the Portal Room. The description is "A large wooden bookshelf. Mostly empty, except for an old dusty book on one of the rows."

Instead of taking the bookshelf:
	say "I don't think you can carry that."

Rule for writing a paragraph about the bookshelf:
	say " "

The old book is in the bookshelf. The old book has a number called the last page read. The old book has a number called the length. The length of the old book is 6."An ancient book that seems to be about the various myths and places in these worlds."

Understand "ancient book" or "book" or "dusty book" or "dusty old book" as old book.

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
1	"[bold type] About the Ragnarok. [roman type] In Norse mythology, Ragnarök is a series of events, including a great battle that will result in the death of a number of Gods. The Gods, understandably, don't want to die just yet, so they have appointed you to stop it. It is a great honor, they assure you, just don't fail. The Ragnarok officially begins when one of the Gods, Baldr, dies by being impaled with a spear covered in mistletoe. In order to stop this from happening, you must convince the mistletoe not to harm Baldr."
2	"[bold type] About the Underworld. [roman type] The Underworld is Hel's domain. She doesn't appear to be there at the moment, but she left the gate open, allowing you to walk up to the river Gjoll. Heimdallr's horn, Gjallarhorn, comes from this river. However, the river Gjoll is said to feel like thousands of knives, so I wouldn't be to hasty to go swimming. Maybe if you had some sort of pole..."
3	"[bold type] About Midgard. [roman type] For the time being, the Gods have restricted the accessible area of your homeworld to a janitor's closet and a small forest just outside. They say it is incentive for you to work faster. Not everything here is trash, though, and you may even find something to help you on your journey."
4	"[bold type] About Valhalla. [roman type] Valhalla, where fallen heros come to celebrate. Seeing as you aren't dead yet, and haven't done anything particularly heroic, Valhalla doesn't hold that much significance to you. Although I would look around closely, you never know what you might find."
5	"[bold type] About the Forest. [roman type] The forest, home to the infamous mistletoe. Although mistletoe may seem unimportant, it plays a large role in the upcoming events. To stop the Ragnarok, you must secure a vow from it, saying that it promises to not harm Baldr. However, this is easier said than done, since the mistletoe doesn't seem up to bargaining in its current mood."
6	"[bold type] About Asgard. [roman type] The home of the Gods. Or the ones that you care about, anyway. Everything here is extravagant and well-polished. Although you are not allowed into the actual city, the fountain near the entrance shows the lavishness of the Gods quite well. Pure, fine, Asgardian water flows from this fountain. It makes you thirsty just looking at it."
	
To read page (N - a number): 
	now the last page read of the old book is N;
	if there is a content corresponding to a page of N in the Table of Book Contents: 
        		choose row with a page of N in the Table of Book Contents; 
        		say "You read: '[content entry]'[paragraph break]"; 
	otherwise: 
        		say "Page [N] appears to be blank."

To read page (N - 4):
	if Heimdallr is not carrying Gjallarhorn:
		say "The section on Valhalla seems to be unreadable as of now. Maybe you will be able to read this farther along your adventure.";
		stop the action;
	otherwise:
		choose row with a page of N in the Table of Book Contents;
		say "You read: '[content entry]'[paragraph break]"

To read page (N - 5):
	if player is not carrying map:
		say "The section on the forest seems to be unreadable as of now. Maybe you will be able to read this farther along your adventure.";
		stop the action;
	otherwise:
		choose row with a page of N in the Table of Book Contents;
		say "You read: '[content entry]'[paragraph break]"
		
To read page (N - 6):
	if player is not carrying the golden key:
		say "The section on Asgard seems to be unreadable as of now. Maybe you will be able to read this farther along your adventure.";
		stop the action;
	otherwise:
		choose row with a page of N in the Table of Book Contents;
		say "You read: '[content entry]'[paragraph break]"
		
Mood is a kind of value. The moods are unhappy, pleased, and suspicious. People have mood. The mood of Heimdallr is unhappy. The mood of Mistletoe is unhappy.

Heimdallr is a man in the Portal Room. the description of Heimdallr is "A large, rather intimidating man. He looks [the mood of Heimdallr]. When asked, he says that he is missing Gjallarhorn, the horn from the river Gjoll."

Instead of attacking Heimdallr:
	end the game saying "It wasn't a very smart choice to attack a god. You find yourself unable to continue your adventure."

Understand "man" or "person" as Heimdallr.

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or "converse with [someone]" as talking to.

Check talking to: say "[The noun] doesn't reply."

Instead of talking to Heimdallr:
	say "Heimdallr says he can't find his horn, Gjallarhorn. He seems pretty distraught about this. Is there anything else you would like to ask him?"

Understand "the large gate" or "gate" or "opening the large gate" or "opening the gate" as "[gate]". Instead of asking Heimdallr about "[gate]", say "He doesn't seem to want to open the gate."

Understand "where is Gjallarhorn/Horn" or "where is horn/gjallarhorn" or "gjallarhorn/horn" or "horn/gjallarhorn location" as "[horn]". 
Instead of asking Heimdallr about "[horn]", say "Heimdallr says he does not remember, but it should be somewhere nearby."
	
Instead of telling Heimdallr about something, try asking Heimdallr about it.

Instead of giving Gjallarhorn to Heimdallr:
	now Heimdallr is pleased;
	move Gjallarhorn to Heimdallr;
	say "Heimdallr looks [the mood of Heimdallr]. He decides to open the large gate for you."

The large gate is south of Valhalla and north of the Portal Room. The large gate is a door. The description of the large gate is "A large gate that must be several stories high. It doesn't look like you are going to be able to open it without Heimdallr's consent."

Valhalla is a room."A good-sized room that looks like it has seen its fair share of parties. It isn't necessarily dirty, but everything is worn. [paragraph break] To the west is Asgard's Gate, to the south is the Portal Room."

Before going to Valhalla:
	if Heimdallr is not carrying Gjallarhorn:
		say "It seems Heimdallr doesn't want you going in there.";
		stop the action;
	otherwise:
		move player to Valhalla.
		
The map is a thing in Valhalla. The description is "A map of Midgard and its surrounding forests, there seems to be a clearning pointed out just south of Midgard."

The centerpiece is a thing in Valhalla. The description is "An intricate centerpiece showing what appears to be several of the worlds you have visited. Upon further inspection you can see there is a map attached."

Instead of taking the centerpiece:
	say "You might want to examine it first."
	
The table is scenery in Valhalla. "A large oaken table. Judging by its worn state, there have been many parties and celebrations here."

The chairs are scenery in Valhalla. "Wooden chairs to match the table."

Understand "chair" as chairs.

The Underworld is a room. It is south of the Portal Room. "A place that is surprisingly well lit for a place that seems so dark. A chilly wind makes you shiver. You can see the river Gjoll here. [paragraph break] To the north is the Portal Room."

Hel's Gate is a thing in the Underworld. 

Instead of taking Hel's Gate, say "I don't think you can carry that."

Instead of examining Hel's Gate:
	say "While looking at Hel's Gate, you decide that Hel has very interesting decorating tastes. You notice that one of the metal barbs on the gate is loose. You can just reach it. When you hold it, you realize it is a little larger than you expected. It looks like you could combine this with something long to create some sort of fishing pole...";
	move metal barb to player.

The metal barb is a thing. The description of the metal barb is "A small metal barb. It might be more useful if used with another item."

Understand "barb" as metal barb.

The fishing pole is a thing. The description of the fishing pole is "A long pole, typically used for fishing, but there are other things in the river that you can catch."

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Instead of combining metal barb with pole:
	say "You combine the metal barb and the pole to make a fishing pole. Although you probably won't use it to catch fish. Don't worry, there are other things in the river you can catch besides fish.";
	remove metal barb from play;
	remove pole from play;
	move the fishing pole to player.

Instead of combining pole with metal barb: 
	say "You combine the metal barb and the pole to make a fishing pole. Although you probably won't use it to catch fish. Don't worry, there are other things in the river you can catch besides fish."; 
	remove metal barb from play; 
	remove pole from play; 
	move the fishing pole to player.

Gjoll is scenery in the Underworld. The description is "A flowing river that looks more intimidating than refreshing."

Understand "river" or "river water" or "river Gjoll" as Gjoll.

Gjallarhorn is a thing in Gjoll. "The famous horn of Heimdallr, I'm sure he wants it back. It looks large and heavy, but doesn't seem to weigh much. There is a strange script running down the length of the handle. Too bad you don't understand old Norse."

Understand "horn" as Gjallarhorn.

Before taking Gjallarhorn:
	if player is carrying the fishing pole:
		say "You stick the fishing pole into the water and skillfully maneuver the metal barb into the horn. With a quick motion, you bring the horn up to the surface and into your pocket.";
		move Gjallarhorn to player;
	if player is carrying the pole:
		say "You stick your pole in the water, but you end up pushing Gjallarhorn around. Hmm, maybe if you had something sharp to combine with the pole.";
		stop the action;
	if player is not carrying the fishing pole:
		say "Gjallarhorn is at the bottom of the river, your arms are too short to reach it from here. Maybe if you had something to fish it out of the river...";
		stop the action.

Midgard is a room. It is west of the Portal Room. " "

The trash is scenery in Midgard. "Large garbage bags filled with who-knows-what. You can smell it from several feet away."

Instead of taking the trash:
	say "I wouldn't want to touch that unless you want to smell like garbage for the rest of the week."

The mop is scenery in Midgard. "A blue and white dust mop."

Understand "dust mop" or "dustmop" as mop.

Instead of taking the mop:
	say "You probably won't be cleaning where you are going."

The bucket is a container in Midgard. The description is "A medium sized plastic bucket." 

Filling it with is an action applying to two things.
Understand "fill [something] with [something]" or "pour [something] into/in [something]" or "put [something] in [something]" as filling it with.

Check filling it with:
	if the noun is not the bucket, say "Fill? What are you filling?";
	if the noun is bucket and the second noun is Gjoll, say "The water looks murky and foreboding. You should fill the bucket elsewhere";
	if the noun is bucket and the second noun is fountain water:
		say "You fill the bucket with water from the fountain.";
		move fountain water to the bucket.
	
Asgard is a room. " "

Asgard's Gate is east of Asgard and west of Valhalla. Asgard's Gate is a door. Asgard's Gate is locked and lockable. The golden key unlocks Asgard's Gate. The description of Asgard's Gate is "A large ornate golden gate. It is decorated almost to the point of being ridiculously cheesy. You almost expect to hear a choir singing when you look at it."

Understand "golden gate" or "gold gate" as Asgard's Gate.

The fountain is scenery in Asgard. "A huge marble fountain depicting a man trying to catch a fish with his bare hands. Water shoots out of the fish's mouth into the large circular area surrounding the fountain."

Fountain water is scenery in Asgard. "Shimmering clear water from the fountain"

Instead of drinking fountain water, say "Although it is tempting, you have more important matters to get to."

Understand "water" as fountain water.	

Before going to Forest Clearing:
	if player is not carrying map:
		say "The forest looks thick and unwelcoming. It would be foolish to enter without a map.";
		stop the action;
	otherwise:
		say "You successfully navigate through the winding path, finding the forest clearing pointed out on the map.";
		move player to Forest Clearing.

The Forest Clearing is a room. It is south of Midgard. "A small grassy patch in the middle of the forest. There are tall pine trees surrounding the area. Sunlight filters down into the clearing, but the rest of the forest is obscured. [paragraph break] To the north is Midgard."

Mistletoe is a man in the Forest Clearing. "a small green plant near the edge of the clearning." The description of Mistletoe is "A small green plant. It looks pretty harmless in its current state."

Understand "plant" as Mistletoe.

Instead of talking to Mistletoe:
	say "The mistletoe looks [mood] "
	
Include Quip-Based Conversation by Michael Martin. 

The trees are scenery in the Forest Clearing. "Large pine trees that seem to stretch on forever."

The golden key is a thing in the Forest Clearing. "A large ornate golden key. It looks like it would fit into a large ornate golden gate."

Understand "key" or "ornate key" or "large key" or "large ornate golden key" or "ornate golden key" or "large key" as golden key.


