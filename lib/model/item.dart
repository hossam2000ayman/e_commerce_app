// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Item {
  String imgPath;
  double price;
  String location;
  String description;
  Widget icons;
  String name;
  Item(
      {required this.imgPath,
      required this.price,
      required this.description,
      this.location = 'Main Branch',
      required this.name,
      required this.icons});
}

List<Item> items = [
  Item(
      name: "Saint Row",
      imgPath: 'assets/images/game 1.webp',
      price: 65.99,
      description:
          'Saints Row is a series of action-adventure video games created by Volition and published by THQ and Deep Silver. The series follows the 3rd Street Saints, a fictional street gang originally operating out of the Saint\'s Row district, hence the series\' title. Gameplay in the Saints Row games focuses on an open world where the player can complete missions to progress an overall story, as well as engage in various side activities. Most of the gameplay revolves around driving and shooting, with occasional role-playing elements. Due to early entries being labeled as Grand Theft Auto clones, the developers sought to create a more distinctive experience from the third game onwards, with a heavy focus on over-the-top gameplay, popular culture homages, parodies, and self-referential humor; these changes have been controversial among fans of the original games. The first four games in the Saints Row series were set primarily in two fictional locales—Stilwater and Steelport—which are loosely based on real American cities. The games center on an initially unnamed player-created character (later nicknamed "the Boss") who joins the 3rd Street Saints by chance and helps them defeat enemy gangs in city-wide turf wars. Later down the line, they become the gang\'s leader, a celebrity and pop culture icon, and eventually President of the United States, while facing more powerful enemies, such as an anti-gang paramilitary and an alien empire. Work on the original Saints Row began in 2003, after Volition\'s completion of Red Faction II. The game was released in August 2006 to critical acclaim and commercial success. The sequel, Saints Row 2, was released in October 2008 to similar acclaim and greater commercial success. The series\' third entry, Saints Row: The Third, was released in November 2011 and was the final Saints Row video game to be published by THQ before Deep Silver acquired the rights to series in 2013. The series\' fourth entry, Saints Row IV was released in August 2013, with a standalone expansion called Gat out of Hell released in January 2015 in North America and Europe. As of September 2013, the series has had sales in excess of 13 million, making it one of the best-selling video game franchises of all-time.',
      location: 'Game Zone',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "Far Cry 4",
      imgPath: 'assets/images/game 2.jpg',
      price: 24.99,
      description:
          'Far Cry 4 is a 2014 first-person shooter game developed by Ubisoft Montreal and published by Ubisoft. It is the successor to the 2012 video game Far Cry 3, and the fourth main installment in the Far Cry series. Set in the fictional Himalayan country of Kyrat, the game follows Ajay Ghale, a young Kyrati-American, who becomes caught in a civil war between Kyrat\'s Royal Army, controlled by tyrannical king Pagan Min, and a rebel movement called the Golden Path. Gameplay focuses on combat and exploration; players battle enemy soldiers and dangerous wildlife using a wide array of weapons. The game features many elements found in role-playing games, such as a branching storyline and side quests. The game also features a map editor and both cooperative and competitive multiplayer modes.',
      location: 'Steam',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_half),
        ],
      )),
  Item(
      name: "MK11 Aftermath",
      imgPath: 'assets/images/game 3.webp',
      price: 55.00,
      description:
          'Mortal Kombat is an American media franchise centered on a series of video games originally developed by Midway Games in 1992. The development of the first game was originally based on an idea that Ed Boon and John Tobias had of making a video game starring Jean-Claude Van Damme, but when that idea fell through, a science fantasy-themed fighting game was created instead. Still, the developers paid homage to him with Johnny Cage (one of the main characters in the many games), a fictional film star whose personal style resembles Van Damme\'s. The original Mortal Kombat was the first fighting game to introduce a secret fighter, reached if the player fulfilled a set of requirements.',
      location: 'Steam',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
    name: "Elder Ring",
    imgPath: 'assets/images/game 4.jpg',
    price: 155.00,
    description:
        'Elden Ring is a 2022 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment. It was directed by Hidetaka Miyazaki and made in collaboration with the fantasy writer George R. R. Martin, who provided material for the setting. An admirer of Martin\'s work, Miyazaki hoped his contributions would produce a more accessible narrative than FromSoftware\'s previous games. It was released for PlayStation 4, PlayStation 5, Windows, Xbox One, and Xbox Series X/S on February 25. In Elden Ring, players control a customizable player character known as a Tarnished, on a journey to repair the Elden Ring and become the new Elden Lord. The game is presented through a third-person perspective, with players freely roaming its interactive open world. Gameplay elements include combat using several types of weapons and magic spells, horseback riding, and crafting. FromSoftware wanted to create an open-world game with gameplay similar to their existing Souls series, intending Elden Ring to act as an evolution to them. The game received critical acclaim for its gameplay systems, exploration, and setting, with some initial criticism targeted towards its technical performance on PC. As with titles in the Souls series, the game’s difficulty had a polarized reception. By May 2022, Elden Ring had sold more than 13.4 million copies.',
    location: 'Game Zone',
    icons: Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    ),
  ),
  Item(
      name: "Dark Souls",
      imgPath: 'assets/images/game 5.webp',
      price: 100.99,
      description:
          'Dark Souls III[a] is a 2016 action role-playing video game developed by FromSoftware and published by Bandai Namco Entertainment for PlayStation 4, Xbox One, and Windows. It is the fourth overall entry of the Souls series and the final installment of the Dark Souls trilogy. Played in a third-person perspective, players have access to various weapons, armour, magic, and consumables that they can use to fight their enemies. Hidetaka Miyazaki, the creator of the series, returned to direct the game after handing the development duties of Dark Souls II to others in FromSoftware.',
      location: 'Stream Unlocked',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "NFS Payback",
      imgPath: 'assets/images/game 6.webp',
      price: 120.99,
      description:
          'Need for Speed (NFS) is a racing video game franchise published by Electronic Arts and currently developed by Criterion Games, the developers of Burnout.[1] The series generally centers around illicit street racing and tasks players to complete various types of races while evading the local law enforcement in police pursuits. The series is one of EA\'s oldest franchises not under their EA Sports brand. The series released its first title, The Need for Speed, in 1994. The most recent game, Need for Speed: Hot Pursuit Remastered, was released on November 6, 2020. Additionally, a free-to-play mobile installment released in 2015, Need for Speed: No Limits, is actively developed by Firemonkeys Studios, the developers of Real Racing 3.',
      location: 'Stream Unlocked',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_half),
        ],
      )),
  Item(
      name: "One Piece Pirate",
      imgPath: 'assets/images/game 7.webp',
      price: 230.00,
      description:
          'One Piece (stylized in all caps) is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump since July 1997, with its individual chapters compiled into 102 tankōbon volumes as of April 2022. The story follows the adventures of Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit. With his pirate crew, the Straw Hat Pirates, Luffy explores the Grand Line in search of the deceased King of the Pirates Gol D. Roger\'s ultimate treasure known as the "One Piece" in order to become the next King of the Pirates.',
      location: 'Game Zone',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "COD Vanguard",
      imgPath: 'assets/images/game 8.jpg',
      price: 334.99,
      description:
          'Call of Duty: Vanguard is a 2021 first-person shooter game developed by Sledgehammer Games and published by Activision.[3][4] It was released on November 5 for Microsoft Windows, PlayStation 4, PlayStation 5, Xbox One, and Xbox Series X/S.[5] It serves as the 18th installment in the overall Call of Duty series. Vanguard establishes a storyline featuring the birth of the special forces to face an emerging threat at the end of the war during various theatres of World War II.The game received mixed reviews from critics, with praise towards the campaign and multiplayer, but criticism for its Zombies mode, historical inaccuracies, and lack of innovation. It was deemed a commercial disappointment when compared to previous installments.',
      location: 'Game Zone',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "Batman",
      imgPath: 'assets/images/game 9.jpg',
      price: 19.99,
      description:
          'Batman: Arkham Knight is a 2015 action-adventure game developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment. Based on the DC Comics superhero Batman, it is the successor to the 2013 video game Batman: Arkham Origins, and the fourth main installment in the Batman: Arkham series. Written by Sefton Hill, Ian Ball and Martin Lancaster, Arkham Knight is inspired by the long-running comic book mythos. Set nine months after the events of 2011\'s Batman: Arkham City, the game\'s main storyline follows Batman as he confronts Scarecrow, who has launched an attack on Gotham City, causing a citywide evacuation. Scarecrow, with the help of the mysterious Arkham Knight, plots to unite Batman\'s greatest foes in an attempt to finally destroy Batman. The game is presented from a third-person perspective, with a primary focus on Batman\'s melee combat, stealth abilities, detective skills, and gadgets. Batman can freely move around the open world of Gotham City, interacting with characters and undertaking missions, and unlocking new areas by progressing through the main story or obtaining new equipment. The player is able to complete side missions away from the main story to unlock additional content and collectible items. Combat focuses on chaining attacks together against numerous foes while avoiding damage, while stealth allows Batman to conceal himself around an area, using gadgets and the environment to silently eliminate enemies. Arkham Knight introduces the Batmobile as a playable vehicle, which is used for transportation, puzzle solving and combat.',
      location: 'Steam',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "God of War",
      imgPath: 'assets/images/game 10.webp',
      price: 230.99,
      description:
          'God of War is an action-adventure game franchise created by David Jaffe at Sony\'s Santa Monica Studio. It began in 2005 on the PlayStation 2 (PS2) video game console, and has become a flagship title for the PlayStation brand, consisting of ten games across multiple platforms with an eleventh currently in development. Based in ancient history, the story follows the titular protagonist, Kratos, a Spartan warrior and later the God of War, who was tricked into killing his family by his former master, the original Greek God of war Ares. This sets off a series of events that leads to wars with the pantheons. The Greek era of the series sees Kratos follow a path of vengeance due to the machinations of the Olympian Gods, while the Norse era, which introduces his son Atreus as a secondary protagonist, shows an older Kratos on a path of redemption, which inadvertently brings the two into conflict with the Norse Gods.',
      location: 'Steam',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "Assassin's Creed",
      imgPath: 'assets/images/game 11.jpg',
      price: 122.99,
      description:
          'Assassin\'s Creed is an open-world action-adventure stealth video game franchise published by Ubisoft and developed mainly by its studio Ubisoft Montreal using the game engine Anvil and its more advanced derivatives. Created by Patrice Désilets, Jade Raymond, and Corey May, the Assassin\'s Creed series depicts a fictional millennia-old struggle between the Assassins, who fight for peace and free will, and the Templars, who desire peace through order and control. The series features historical fiction, science fiction and fictional characters intertwined with real-world historical events and figures. In the majority of the games, players control a historical Assassin, while also playing as an Assassin Initiate or someone caught in the Assassin-Templar conflict in the present-day framing story. Considered a spiritual successor to the Prince of Persia series, Assassin\'s Creed took inspiration from the novel Alamut by the Slovenian writer Vladimir Bartol, based on the historical Hashashin sect of the medieval Middle East',
      location: 'Steam',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      )),
  Item(
      name: "Star Wars Jedi",
      imgPath: 'assets/images/game 12.jpg',
      price: 162.99,
      description:
          'Star Wars Jedi: Fallen Order is an action-adventure video game developed by Respawn Entertainment and published by Electronic Arts. It was released for Windows, PlayStation 4 and Xbox One in November 2019, for Stadia in November 2020, and for the PlayStation 5 and Xbox Series X and Series S in June 2021. The story, set in the Star Wars universe five years after Star Wars: Episode III – Revenge of the Sith, follows Jedi Padawan Cal Kestis, who becomes a target of the Galactic Empire and is hunted throughout the galaxy by the Imperial Inquisitorius while attempting to complete his training, reconcile with his troubled past, and rebuild the fallen Jedi Order. The game was announced during E3 2018, with a more detailed reveal during the Star Wars Celebration in April 2019. The game received generally favorable reviews from critics and was a commercial success, selling more than ten million copies by 2020. A sequel, Jedi: Survivor, is set to release in 2023.',
      location: 'Game Zone',
      icons: Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_half),
        ],
      )),
];
