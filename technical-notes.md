# Technical notes
For all those who are curious enough to read this far, here are a few insider tidbits about the pack:

## Sounds
All sounds in this pack are fully normalized and game volume directives are specified in the sounds.json file, which makes changing the volume for a specific file much easier and can even be done by you, just by editing the sounds.json in the zip file, if you think a particular sound is too loud.

## Building from source
I usually push a bunch of commits between releases, so at any time, if you are impatient for a new version and you know what you are doing, you can clone my repository to your hard drive and pack the files yourself. I will not, however, be able to provide any kind of support for versions packed by other people.  There's just not enough time in the day for that.  To avoid confusion and/or conflicts, make sure you choose a name that doesn't match my format; perhaps use the word "custom" or the date you cloned the repo or "packed-by-{your name}" or something like that.

## Pack structure
This pack uses a strange two-tiered system for file location, so I wanted to explain why I did that.  Three intersecting goals led to my strange decision:

1. I wanted all sound files for a particular team member to live in a folder with that team member's name.  This will allow me to count them per team member for future documentation.
2. I wanted to replace some vanilla sounds completely
3. I wanted to avoid "replace":true in the JSON as much as possible
	1. Every time a sound event has "replace":true, it completely replaces any other files for that event, including from other resource packs, even if the other resource pack specifies completely different paths.  It makes layering packs impossible.
	
To accomplish these things, all actual .ogg files live in folders called sounds/team/{team member's name}.  To replace vanilla sounds without stomping (too hard) on other resource packs, I use symlinks in the traditional folders specified in Mojang's official sounds.json file.

This last point takes advantage of a Mojang existing feature: So long as you are putting a file in the directory that the vanilla sounds.json expects and name it the exact same name as the vanilla sound, you do not need to provide a sounds.json record of your own.  The game just knows where to find them.  In fact, the very first version of the FlyingHawkButt Villager Sounds pack had no sounds.json file, because I hadn't discovered that it was necessary at that time.

What I am doing in this pack is creating a shortcut to a sounds/team/{member name} file, and naming _the shortcut_ exactly like the vanilla version so that it naturally overwrites the vanilla sound without having to specify "replace":true on the sound event.  In theory, this should allow users to layer this pack on top of the aforementioned FlyingHawkButt pack, and have most of the sounds from that pack triggered alongside this one.  Currently, the FHB packs aren't set up like that, so putting the "adult" edition of that pack on top of the "loaded" edition eliminates all the sounds from the "loaded" edition.  I was hoping to avoid that with this pack, and one day I'll revisit FHB and make these changes there.

If anyone can think of a way to accomplish these goals without all the extra complexity, drop me a line either through opening a pull request, creating an issue, DMing me on Discord or shooting me an email at my gmail address.  Currently, I am "kuoxsr" everywhere on the internet.