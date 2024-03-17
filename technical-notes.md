---
modified: 2024-03-17T16:09:47-05:00
---
# Technical notes
For all those who are curious enough to read this far, here are a few insider tidbits about the pack.
## Contributing
This document might be helpful to anyone who wishes to create a pull request and contribute directly to the project, though I've never participated in a pull request, so I'm not even sure how that's done at the moment.  I'm Kuoxsr on Discord, if you want to send me a direct message.

Even if you aren't planning on contributing directly, you might find some of the following interesting:
## Sounds
All sounds in this pack are fully normalized and game volume directives are specified in the sounds.json file.  This makes changing the volume for a specific file much easier and can even be done by you, just by editing the sounds.json in the zip file, if you think a particular sound is too loud.  You can find this file in assets/minecraft.

To be directional and distance-dependent in Minecraft, all sounds are mixed-down to mono.
## Building from source
I usually push a bunch of commits between releases, so at any time, if you are impatient for a new version and you know what you are doing, you can clone my repository to your hard drive and pack the files yourself. I will not, however, be able to provide any kind of support for versions packed by other people.  There's just not enough time in the day for that.  To avoid confusion and/or conflicts, make sure you choose a name that doesn't match my format; perhaps use the word "custom" or the date you cloned the repo or "packed-by-{your name}" or something like that.

All the files needed to build a pack are in the "files" folder.  Yeah, yeah, I know... really original folder name.  I wasn't sure what to call it.  The hardest thing in development is naming things.  Anyway, zip up the contents of that folder to create your own pack.  Make sure your zip file does not include the "files" folder itself.  Do this by going into the files folder with your file manager, draw a selection box around "assets", "LICENSE", "pack.mcmeta", "pack.png", and "README.md" then compress that into a zip file.  At that point, you should be good to go.

Please consider any pack that you build from source between releases as testing only.  I can't make any guarantees that anything will work from commit to commit.
## Pack structure
This pack uses a custom namespace to store all of its files.  This means in a folder directly under "assets" called "team."  This was new to me as of this project, so I'm including a description here mostly so I can remember it in the future.

In assets/minecraft/sounds.json, you refer to resources in these namespaces like this:

```
"team:{team-member-name}/{sound-event}/{ogg-file-name}"
```

Note the use of a colon (:) instead of a slash after the namespace "team."  this is because a namespace folder is just the starting point for every other category of minecraft resource.  In our case, there is a "sounds" sub-folder underneath "team" and the logic that reads the sounds.json file adds this automatically after the "team:" namespace at runtime.

Here's an example of this usage from this pack:
```
"entity.villager.death": {
        "replace":true,
        "sounds": [
            {"name":"team:tamildin/entity/villager/hurt/gasp01", "volume":0.5}
        ],
        "subtitle": "subtitles.entity.villager.death"
    }
```

Also notice that "".ogg" is not specified in the JSON.  This is added automatically as well.

I tend to follow these conventions when naming .ogg files:

1. Every name that I think might be common, I add 01 to the first one I cut, and keep incrementing with each new clip
2. I give files descriptive names, like the Tamildin name in the above example code
3. I try to keep the length of the name as short as possible to convey what's in the sound, so that the sounds.json file doesn't have a lot of word-wrap.

It may be a bad idea, but going forward I'm going to try to keep the sounds.json alphabetized by event name, team member name, and sound name.

I also don't name sounds after the event I intend to use it for because when I'm cutting clips, I don't really know what I might use it for, and sometimes the same sound is used for multiple different events, so a name that is specific to the event could be confusing.  My method tends to use a name that transcribes what's actually being said in the clip, to a certain maximum size, to prevent too much typing.

Anyway, there you have it.  I've gone on too long already.

Thanks for listening!
