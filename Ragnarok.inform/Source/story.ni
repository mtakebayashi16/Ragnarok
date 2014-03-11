"Ragnarok" by Marissa Takebayashi

Use no scoring.

[Did a quick google search and found a discussion on how to disable "take all". Answer provided by JDC.]
Rule for deciding whether all includes something: it does not.

Instead of examining player, say "You are a human of average height and weight. You are a generally average person, not having done any astounding feats of bravery, or seen anything particularly extraordinary. Maybe your wish for adventure will soon be fulfilled."

When play begins: say "You wake up in a strange room, not entirely knowing why you are here, or even where you are. There isn't much in the room to suggest why you are here, maybe you can find something in this room to help you remember."

The Portal Room is a room. "A mostly empty room. The walls are all a bland grey and there are no windows. There is a bookshelf leaning against one of the walls. [paragraph break] To the south is the Underworld, Midgard it to the west, and there is a large gate to the north."

The statue is a thing in the Portal Room. The description is "A large stone statue of a tall bearded man holding a staff. It looks like part of the statue is starting to fall off. You can just make out hairline cracks near the hand holding the staff."

Understand "stone statue" or "hand" as statue.

The staff is in the Portal Room. "A long stone pole. It looks much heavier than it actually is."

Instead of examining staff:
	if player is not carrying staff, say "A long stone staff that the statue is holding.";
	if player is carrying staff, say "A long stone pole. It looks much heavier than it actually is."

Instead of attacking the statue: 
    	move staff to player; 
    	say "You reach up and break off the staff that the statue was holding. It is a lot heavier than you expected, but still manageable."

[Had a lot of trouble finding the right verb for this, since I didn't see a "break" command in the list of defined actions (In the Inform 7 Handbook)]
Instead of attacking the staff:
	move staff to player; 
    	say "You reach up and break off the staff that the statue was holding. It is a lot heavier than you expected, but still manageable."

Instead of taking the staff, say "you are going to need to use more force to do that."
	
Instead of taking the statue:
	say "That is way too large to carry."

The bookshelf is a thing in the Portal Room. The description is "A large wooden bookshelf. Mostly empty, except for an old dusty book on one of the rows."

Instead of taking the bookshelf:
	say "I don't think you can carry that."
	
[Didn't want the book to appear when the list of items in the room appeared. This way the bookshelf doesn't appear as one of the "things" in the room description and the book is not listed.]
Rule for writing a paragraph about the bookshelf:
	say " "

The old book is in the bookshelf. The old book has a number called the last page read. The old book has a number called the length. The length of the old book is 6."An ancient book that seems to be about the various myths and places in these worlds. There appears to be six pages in the book that are a mix of readable and unreadable characters."

Understand "ancient book" or "book" or "dusty book" or "dusty old book" as old book.

[CMost of the rules allowing the player to read the book are from the recipe book (Chapter 9.6, example "Pages")]
Understand the command "read" as something new.

Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing.

Understand "read [number] in/from/of [something]" or "read page [number] in/from/of [something]" or "look up page [number] in/from/of [something]" or "consult page [number] in/from/of [something]" as reading it in. Reading it in is an action applying to one number and one thing.

[Making the pages values, so if the player uses words instead of numbers, the code and firgure out which page it means]
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

[Added part about the book being unreadable if wet. Had a bit of trouble wording the command so Inform allowed it, but it finally works.]
This is the book requirement rule: 
	if the player is not carrying the old book:
		say "You're not reading anything.";
	if the old book is wet, say "The book is too soaked to read, thanks to your carelessness." instead.

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
1	"[bold type] About the Ragnarok. [roman type] In Norse mythology, Ragnarök is a series of events, including a great battle that will result in the death of a number of Gods. The Gods, understandably, don't want to die just yet, so they have appointed you to stop it. It is a great honor, they assure you, just don't fail. The Ragnarok officially begins when one of the Gods, Baldr, dies by being impaled with a spear covered in mistletoe, since it was the only living thing, in all of the nine realms, that hadn't been asked not to hurt Baldr. A minor oversight by Baldr's mother, who tried to prevent his death. In order to stop this from happening, you must convince the mistletoe not to harm Baldr."
2	"[bold type] About the Underworld. [roman type] The Underworld is Hel's domain. She doesn't appear to be there at the moment, but she left the gate open, allowing you to walk up to the river Gjoll. Heimdallr's horn, Gjallarhorn, comes from this river. However, the river Gjoll is said to feel like thousands of knives, so I wouldn't be to hasty to go swimming. Maybe if you had some sort of pole..."
3	"[bold type] About Midgard. [roman type] For the time being, the Gods have restricted the accessible area of your home world to a janitor's closet and a small forest just outside. They say it is incentive for you to work faster. Not everything here is trash, though, and you may even find something to help you on your journey."
4	"[bold type] About Valhalla. [roman type] Valhalla, where fallen heroes come to celebrate. Seeing as you aren't dead yet, and haven't done anything particularly heroic, Valhalla doesn't hold that much significance to you. Although I would look around closely, you never know what you might find."
5	"[bold type] About the Forest. [roman type] The forest, home to the infamous mistletoe. Although mistletoe may seem unimportant, it plays a large role in the upcoming events. To stop the Ragnarok, you must secure a vow from it, saying that it promises to not harm Baldr. However, this is easier said than done, since the mistletoe doesn't seem up to bargaining in its current mood."
6	"[bold type] About Asgard. [roman type] The home of the Gods. Or the ones that you care about, anyway. Everything here is extravagant and well-polished. Although you are not allowed into the actual city, the fountain near the entrance shows the lavishness of the Gods quite well. Pure, fine, Asgardian water flows from this fountain. It makes you thirsty just looking at it."

[Added in rules so that pages were unlocked as the game progresses. The book almost acts as a hint system, my sister said the book was pretty useful when she beta tested.]	
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
		
[Wasn't sure how to tie this back into making it follow the Book Requirement Rule. So if the player writes "read book" without carrying the book, this error appears instead of the one described in the requirement rule.]		
Understand "read book" as a mistake ("What page do you want to read in the book?").

Understand "read book page 1/one/2/two/3/three/4/four/5/five/6/six" as a mistake ("What page IN the book would you like to read?").

Understand "page 1/one/2/two/3/three/4/four/5/five/6/six" as a mistake ("Page one of what?").

Mood is a kind of value. The moods are unhappy, pleased, and suspicious. People have mood. The mood of Heimdallr is unhappy. The mood of Mistletoe is unhappy.

Heimdallr is a man in the Portal Room. the description of Heimdallr is "A large, rather intimidating man. He looks [the mood of Heimdallr]. When asked, he says that he is missing Gjallarhorn, the horn from the river Gjoll."

Instead of attacking Heimdallr:
	end the game saying "It wasn't a very smart choice to attack a god. You find yourself unable to continue your adventure."

Understand "man" or "person" as Heimdallr.

Understand "ask [someone]" or "ask" as a mistake ("Ask who about what?").

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or "converse with [someone]" as talking to.

Check talking to: say "[The noun] doesn't reply."

Instead of talking to Heimdallr:
	if Heimdallr is carrying Gjallarhorn:
		say "Heimdallr thanks you for finding Gjallarhorn and invites you to go into Valhalla.";
	if Heimdallr is not carrying Gjallarhorn:
		say "Heimdallr says he can't find his horn, Gjallarhorn. He seems pretty distraught about this. Is there anything else you would like to ask him about?"

Understand "the large gate" or "gate" or "opening the large gate" or "opening the gate" as "[gate]". Instead of asking Heimdallr about "[gate]", say "He doesn't seem to want to open the gate."

Understand "where is Gjallarhorn/Horn" or "where is horn/gjallarhorn" or "gjallarhorn/horn" or "horn/gjallarhorn location" as "[horn]". 

Instead of asking Heimdallr about "[horn]", say "Heimdallr says he does not remember, but it should be somewhere nearby."
	
Instead of telling Heimdallr about something, try asking Heimdallr about it.

Instead of giving Gjallarhorn to Heimdallr:
	now Heimdallr is pleased;
	move Gjallarhorn to Heimdallr;
	say "Heimdallr looks [the mood of Heimdallr]. He decides to open the large gate for you."

The large gate is south of Valhalla and north of the Portal Room. The large gate is a door. 

Instead of examining large gate:
	if Heimdallr is carrying Gjallarhorn:
		say "A large gate that must be several stories high.";
	if Heimdallr is not carrying Gjallarhorn:
		say "A large gate that must be several stories high. It doesn't look like you are going to be able to open it without Heimdallr's consent."

Valhalla is a room."A good-sized room that looks like it has seen its fair share of parties. It isn't necessarily dirty, but everything is worn. [paragraph break] To the west is Asgard's Gate, to the south is the Portal Room."

Before going to Valhalla:
	if Heimdallr is not carrying Gjallarhorn:
		say "It seems Heimdallr doesn't want you going in there.";
		stop the action;
	otherwise:
		continue the action.
		
Before opening large gate:
	if Heimdallr is not carrying Gjallarhorn:
		say "It doesn't look like you are going to be able to open the large gate without Heimdallr's consent.";
		stop the action;
	if Heimdallr is carrying Gjallarhorn:
		continue the action.

The map is in the centerpiece. The description is "A map of Midgard and its surrounding forests, there seems to be a clearing pointed out just south of Midgard."

[Making secret items taken from the Inform 7 Handbook.]
Rule for printing room description details of a closed container: stop

The centerpiece is a container in Valhalla. It is closed and openable. The description is "An intricate centerpiece showing what appears to be several of the worlds you have visited suspended on a the branches of a tree. Upon further inspection you can see there is a small opening"

Small opening is scenery in Valhalla. The description of the small opening is "A small opening in the centerpiece, it appears to be closed."

Understand "opening" as small opening.

Understand "center piece" as the centerpiece.

Instead of taking the centerpiece:
	say "A nice floral centerpiece plated in gold. It seems very expensive, probably worth more than you. I wouldn't take it if I were you. Have you tried taking a closer look?"
	
The table is scenery in Valhalla. "A large oaken table. Judging by its worn state, there have been many parties and celebrations here."

The chairs are scenery in Valhalla. "Wooden chairs to match the table."

Understand "chair" as chairs.

The Underworld is a room. It is south of the Portal Room. "A place that is surprisingly well lit for a place that seems so dark. A chilly wind makes you shiver. You can see the river Gjoll here. [paragraph break] To the north is the Portal Room."

Hel's Gate is a thing in the Underworld. 

Instead of taking Hel's Gate, say "I don't think you can carry that."

Instead of examining Hel's Gate:
	if player is carrying the metal barb:
		say "A twisting metal gate that seems to stretch on forever.";
		stop the action;
	if player is carrying the fishing pole:
		say "A twisting metal gate that seems to stretch on forever.";
		stop the action;
	else:
		say "While looking at Hel's Gate, you decide that Hel has very interesting decorating tastes. You notice that one of the metal barbs on the gate is loose. You can just reach it. When you hold it, you realize it is a little larger than you expected. It looks like you could combine this with something long to create some sort of fishing pole...";
		move metal barb to player;
		stop the action.

The metal barb is a thing. The description of the metal barb is "A small metal barb. It might be more useful if used with another item."

Understand "barb" as metal barb.

The fishing pole is a thing. The description of the fishing pole is "A long pole, typically used for fishing, but there are other things in the river that you can catch."

Understand "pole" or "fishingpole" as fishing pole

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Instead of combining metal barb with staff:
	say "You combine the metal barb and the staff to make a fishing pole. Although you probably won't use it to catch fish. Don't worry, there are other things in the river you can catch besides fish.";
	remove metal barb from play;
	remove staff from play;
	move the fishing pole to player.

Instead of combining staff with metal barb: 
	say "You combine the metal barb and the staff to make a fishing pole. Although you probably won't use it to catch fish. Don't worry, there are other things in the river you can catch besides fish."; 
	remove metal barb from play; 
	remove staff from play; 
	move the fishing pole to player.

Gjoll is scenery in the Underworld. The description is "A flowing river that looks more intimidating than refreshing."

Understand "river" or "river water" or "river Gjoll" as Gjoll.

Gjallarhorn is a thing in Gjoll. "The famous horn of Heimdallr, I'm sure he wants it back. It looks large and heavy, but doesn't seem to weigh much. There is a strange script running down the length of the handle. Too bad you don't understand old Norse."

Understand "horn" as Gjallarhorn.

[My sister said it would be great if you could actually blow into Heimdallr's horn.]
Blowing into is an action applying to one visible thing. Understand "blow into [something]" or "blow [something]" as blowing into.

Instead of blowing into Gjallarhorn:
	say "You take a deep breath and blowing into Gjallarhorn. Pppbbttt. You make a noise similar to a loud fart. Maybe you should leave this to Heimdallr as he is no doubt better at this than you."

Before taking Gjallarhorn:
	if player is carrying the fishing pole:
		say "You stick the fishing pole into the water and skillfully maneuver the metal barb into the horn. With a quick motion, you bring the horn up to the surface and into your pocket.";
		move Gjallarhorn to player;
		stop the action;
	if player is carrying the staff:
		say "You stick your pole in the water, but you end up pushing Gjallarhorn around. Hmm, maybe if you had something sharp to combine with the pole.";
		stop the action;
	if player is not carrying the fishing pole:
		say "Gjallarhorn is at the bottom of the river, your arms are too short to reach it from here. Maybe if you had something to fish it out of the river...";
		stop the action.
		
Using is an action applying to one visible thing. Understand "use [something]" as using.

Before using:
	if the noun is not the fishing pole:
		say "Try using another command for that.";
		 stop the action;
	if player is not in Underworld:
		say "You can't see anything you would want to use the fishing pole on.";
		stop the action.

Instead of using fishing pole:
	if player is not carrying the fishing pole:
		say "Gjallarhorn is at the bottom of the river, your arms are too short to reach it from here. Maybe if you had something to fish it out of the river...";
		stop the action;
	if player is carrying the fishing pole:
		say "You stick the fishing pole into the water and skillfully maneuver the metal barb into the horn. With a quick motion, you bring the horn up to the surface and into your pocket.";
		move Gjallarhorn to player.

Midgard is a room. It is west of the Portal Room. "You find yourself in a Midgardian janitor's closet. Which is to say, a regular janitor's closet. There are some trash bags and a mop lying next to the door you just came in. [paragraph break] To the south is a winding path and to the east is the Portal Room."

The trash is scenery in Midgard. "Large garbage bags filled with who-knows-what. You can smell it from several feet away."

Understand "trash bag" or "trash bags" or "bags" as trash.

Instead of taking the trash:
	say "I wouldn't want to touch that unless you want to smell like garbage for the rest of the week."
	
Instead of smelling the trash, say "You proceed to stick your face into the trash bag trying to identify the smell, but only succeed in gagging horribly."

The mop is scenery in Midgard. "A blue and white dust mop."

Understand "dust mop" or "dustmop" as mop.

Instead of taking the mop:
	say "You probably won't be cleaning where you are going."

The bucket is a container in Midgard. The description is "A medium sized plastic bucket." 

Filling it with is an action applying to two things.
Understand "fill [something] with [something]" or "pour [something] into/in [something]" or "put [something] in [something]" as filling it with.

Check filling it with:
	if the noun is not the bucket, say "Fill? What are you filling?";
	if the noun is the bucket and the second noun is Gjoll, say "The water looks murky and generally unpleasant. You decide to leave the river Gjoll right where it is.";
	if the noun is bucket and the second noun is fountain water:
		say "You fill the bucket with water from the fountain.";
		move fountain water to the bucket.

[I was trying to make it so that the property of certain items changed if they were wet. The idea of using different properties is from the Inform 7 Recipe Book.]		
A thing can be wet or dry.

Before printing the name of a wet thing: say "wet ". Understand the wet property as describing a thing.

Instead of inserting the old book into the bucket:
	if the fountain water is in the bucket:
		say "Now the book is all wet. Way to go.";
		now the book is wet;
		continue the action;
	if the fountain water is not in the bucket:
		continue the action.
			
Instead of examining wet old book, say "An ancient book that seems to be about the various myths and places in these worlds. It is soaking wet."
	
Asgard is a room. "A grand place that is the city of the Gods. Unfortunately you aren't allowed any farther into the city, but from here you can access a large marble fountain, but that is about it. [paragraph break] To the east is Valhalla. "

Asgard's Gate is east of Asgard and west of Valhalla. Asgard's Gate is a door. Asgard's Gate is locked and lockable. The golden key unlocks Asgard's Gate. The description of Asgard's Gate is "A large ornate golden gate. It is decorated almost to the point of being ridiculously cheesy. You almost expect to hear a choir singing when you look at it."

Understand "golden gate" or "gold gate" or "Asgards Gate" as Asgard's Gate.

The fountain is a container in Asgard. The description is "A huge marble fountain depicting a man trying to catch a fish with his bare hands. Water shoots out of the fish's mouth into the large circular area surrounding the fountain."

Understand "large fountain" or "marble fountain" or "large marble fountain" as fountain.

Instead of taking the fountain, say "There is no way you could carry that."

fountain water is in the fountain. "Shimmering clear water from the fountain"

Before taking fountain water:
	if player is carrying the bucket:
		move fountain water to bucket;
	if player is not carrying the bucket:
		say "You scoop up some water in your hands, but it quickly drains through your fingers.";
		stop the action.

Instead of drinking fountain water, say "Although it is tempting, you have more important matters to get to."

Understand "water" as fountain water.	

Before going to Forest Clearing:
	if player is not carrying map:
		say "The forest looks thick and unwelcoming. It would be foolish to enter without a map.";
		stop the action;
	otherwise:
		say "You successfully navigate through the winding path, finding the forest clearing pointed out on the map.";
		continue the action.

The Forest Clearing is a room. It is south of Midgard. "A small grassy patch in the middle of the forest. There are tall pine trees surrounding the area. Sunlight filters down into the clearing, but the rest of the forest is obscured. [paragraph break] To the north is Midgard."

Mistletoe is a person in the Forest Clearing. The description of Mistletoe is "A small green plant. It looks pretty harmless in its current state. The mistletoe looks [the mood of mistletoe]."

Understand "plant" or "the Mistletoe" as Mistletoe.

[I wanted a menue based chat, and tried using the Quip-Based Conversation extension by Michael Martin, but was having trouble trying to get it to compile. So I changed it for simple chat, they look pretty similar in game anyway. I changed some of the code below a bit by addind another text option and getting rid of some of code I didn't need for my game.]
Include Simple Chat by Mark Tilford.

Instead of talking to mistletoe: run a conversation from hello mistletoe.

Hello mistletoe, feeling, good bye, helping hand are chat nodes.

Report giving text for hello mistletoe: instead say "The mistletoe looks [mood of mistletoe]".
Carry out finding responses to hello mistletoe: link to feeling; link to good bye; link to helping hand.

Report giving link to feeling: say "'Why are you unhappy?' " instead.
Report giving text for feeling: deactivate feeling; say "'Unhappy? Me? Noo, I'm thinking you are mistaken. Why would I possibly be unhappy? It isn't as if I'm the only living thing deemed too harmless to hurt anyone or anything.' " instead.
Carry out finding responses to feeling: link to good bye; link to helping hand.

Report giving link to good bye: instead say "Try to convince the mistletoe not to hurt Baldr ".
Report giving text for good bye: deactivate good bye; say "'Baldr? I don' have a grudge against anyone named Baldr, but if I see 'em, there is nothing stopping me from hurtin' them. That'll show the Gods that I'm not harmless.'" instead.
Carry out finding responses to good bye: link to helping hand; link to feeling.

Report giving link to helping hand: say "'Is there anything I can do to help?' " instead.
Report giving text for helping hand: deactivate helping hand; say "'Well if ya' want to be real nice you could get me somethin' to drink. I'm dyin' out here out in the hot sun and all. Maybe I'll listen to what you have to say after ya' get me some water.'" instead.
Carry out finding responses to helping hand: link to good bye; link to feeling.

Instead of giving fountain water to Mistletoe:
	now Mistletoe is pleased;
	move fountain water to Mistletoe;
	say "The mistletoe is [the mood of Mistletoe]. You successfully convince the mistletoe not to hurt Baldr."
		
Watering is an action applying to one visible thing. Understand "water [someone]" or "put water on [someone]" as watering. 

Instead of watering the Mistletoe:
	now Mistletoe is pleased;
	move fountain water to Mistletoe;
	say "The mistletoe is [the mood of Mistletoe]. You successfully convince the mistletoe not to hurt Baldr."

Instead of giving bucket to Mistletoe:
	say "The mistletoe has no use for a plastic bucket."

The trees are scenery in the Forest Clearing. "Large pine trees that seem to stretch on forever."

The path is scenery in Midgard. The description of the path is "A long wandering dirt path leading off to somewhere in the forest."

The golden key is a thing in the Forest Clearing. The description is "A large ornate golden key. It looks like it would fit into a large ornate golden gate."

Understand "key" or "ornate key" or "large key" or "large ornate golden key" or "ornate golden key" or "large key" as golden key.

An every turn rule:
	if the mood of Mistletoe is pleased,
	end the game in victory.
