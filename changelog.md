# Version 1.0

## Added

- 298 unique sounds using clips collected from a single Sir_Nipplington VOD from way back at the end of October, 2023 (yes, I have been dragging my feet that long) ([#2](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/2), [#3](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/3), [#4](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/4), [#5](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/5), [#6](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/6), [#7](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/7), [#8](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/8), [#14](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/14))
    - cow.death -> 1
    - phantom.ambient -> 3
    - phantom.hurt -> 3
    - player.burp -> 1
    - villager.ambient -> 58
    - villager.celebrate -> 7
    - villager.death -> 21
    - villager.hurt -> 16
    - villager.no -> 44
    - villager.trade -> 55
    - villager.yes -> 79
    - witch.ambient -> 1
    - witch.celebrate -> 1
    - zombie_villager.ambient -> 8
## Changed
#### User-facing changes
- Implemented Mojang's new "supported_formats" field in pack.mcmeta, so now when a new version of Minecraft comes out, the pack shouldn't tell you it's "incompatible," because it probably isn't.  It also shows compatibility back to version 1.20. ([#15](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/issues/15))
#### Infrastructure changes
- There is now a sha256 hash posted with every release.  Use it to verify that your download came from me.  See [here](https://windowsreport.com/checksum-on-windows/) for steps to use these files. ([6332f7d](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/commit/6332f7d))
- Adjusted folder structure to match sound event name - I have an automated tool that speeds-up the incorporation of new sounds, but it requires the folder structure to exactly match the sound event names. ([d0f0de2](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/commit/d0f0de2), [ab97f3a](https://github.com/Kuoxsr/hardcore-hearts-sound-pack/commit/ab97f3a))

# Version 0.3
---
Contains 16 total sounds from various members of the Hardcore Hearts Team, including:

[CarlCrafts](https://www.twitch.tv/carlcrafts) Secret jump-scare
[JazzLikeOnion](https://www.twitch.tv/jazzlikeonion) Enderman: scream, Ghast: warn, Player: fall damage, Villager: ambient, trade  
[Tamildin](https://www.twitch.tv/tamildin) Witch: ambient, Villager: hurt
[TheBakedDean](https://www.twitch.tv/thebakeddean) Villager: death, hurt

#### Raw file count
```
secret event sound (shhh... no spoilers) -> 1  
entity.villager.ambient -> 1  
entity.villager.death -> 3  
entity.villager.hurt -> 5  
entity.villager.trade -> 1  
entity.ghast.warn -> 1  
entity.enderman.scream -> 1  
entity.player.big_fall -> 1  
entity.player.small_fall -> 1  
entity.witch.ambient -> 1

Total sounds: 16
```

# Version 0.2 Beta
---
Monsters no longer make the oof" sound when falling from a height

# Version 0.1 Beta
---
Initial release

Really an "alpha" version that was released only to [JazzLikeOnion](https://www.twitch.tv/jazzlikeonion), since his "death clip" sounds were the only sounds in the pack at the time.

I included four files:

1. Light fall damage (uhh)
2. Heavy fall damage (ughh)
3. Enderman scream (highly processed)
4. Ghast scream (even more highly processed)