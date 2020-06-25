//
//  TableViewCell.swift
//  Dicoding-Submission-IOS
//
//  Created by Inggih Wicaksono on 25/06/20.
//  Copyright © 2020 igihcksn. All rights reserved.
//

import UIKit

var heroes: [Hero] = [
    Hero(photo: UIImage(named: "gameboy")!, name: "Gameboy Original", description: "The original gray Game Boy was first released in Japan on April 21, 1989. Based on a Z80 processor, it has a black and green reflective LCD screen, an eight-way directional pad, two action buttons (A and B), and Start and Select buttons with the controls being identical to the NES controller. It plays games from ROM-based media contained in cartridges (sometimes called carts or Game Paks). Its graphics are 8-bit (similar to the NES)."),
    Hero(photo: UIImage(named: "gameboy-light")!, name: "Game Boy Light", description: "JIn April 1998, a variant of the Game Boy Pocket named Game Boy Light was exclusively released in Japan. The differences between the original Game Boy Pocket and the Game Boy Light is that the Game Boy Light takes on two AA batteries for approximately 20 hours of gameplay (when playing without using the light), rather than two AAA batteries, and it has an electroluminescent screen that can be turned on or off. This electroluminescent screen gave games a blue-green tint and allowed the use of the unit in darkened areas. Playing with the light on would allow about 12 hours of play. The Game Boy Light also comes in six different colors; silver, gold, yellow for the Pokémon edition, translucent yellow, clear and translucent red for the Astro Boy edition. The Game Boy Light was superseded by the Game Boy Color six months later and was the only Game Boy to have a backlit screen until the release of the Game Boy Advance SP AGS-101 model in 2005."),
    Hero(photo: UIImage(named: "gameboy-color")!, name: "Game Boy Color", description: "First released in Japan on October 21, 1998, the Game Boy Color (abbreviated as GBC) added a (slightly smaller) color screen to a form factor similar in size to the Game Boy Pocket. It also has double the processor speed, three times as much memory,[12] and an infrared communications port. Technologically, it was likened to the 8-bit NES video game console from the 1980s although the Game Boy Color has a much larger color palette (56 simultaneous colors out of 32,768 possible) which had some classic NES ports and newer titles. It comes in seven different colors; Clear purple, purple, red, blue, green, yellow and silver for the Pokémon edition. Like the Game Boy Light, the Game Boy Color takes on two AA batteries. It was the final handheld to have 8-bit graphics."),
    Hero(photo: UIImage(named: "gameboy-advance")!, name: "Game Boy Advance", description: "In Japan, on March 21, 2001, Nintendo released a significant upgrade to the Game Boy line. The Game Boy Advance (also referred to as GBA) featured a 32 bit 16.8 MHz ARM. It included a Z80 processor and a switch activated by inserting a Game Boy or Game Boy Color game into the slot for backward compatibility, and had a larger, higher resolution screen. Controls were slightly modified with the addition of ',L,' and 'R' shoulder buttons. Like the Game Boy Light and Game Boy Color, the Game Boy Advance takes on two AA batteries. The system was technically likened to the SNES and showed its power with successful ports of SNES titles such as Super Mario Advance 2, Super Mario World 2: Yoshi's Island, The Legend of Zelda: A Link to the Past and Donkey Kong Country."),
    Hero(photo: UIImage(named: "gameboy-advance-sp")!, name: "Game Boy Advance SP", description: "First released in Japan on February 14, 2003, the Game Boy Advance SP—Nintendo model AGS-001—resolved several problems with the original Game Boy Advance model. It featured a new smaller clamshell design with a flip-up screen, a switchable internal frontlight, a rechargeable battery for the first time, and the only notable issue is the omission of the headphone jack, which requires a special adapter, purchased separately. In September 2005, Nintendo released the Game Boy Advance SP model AGS-101, that featured a high quality backlit screen instead of a frontlit, similar to the Game Boy Micro screen but larger. It was the final Game Boy and last handheld to have backwards compatibility with Game Boy and Game Boy Color games."),
    Hero(photo: UIImage(named: "gameboy-micro")!, name: "Game Boy Micro", description: "The third form of Game Boy Advance system, the Game Boy Micro is four and a half inches wide (10 cm), two inches tall (5 cm), and weighs 2.8 ounces (80 g). By far the smallest Game Boy created, it has approximately the same dimensions as an original NES controller pad. Its screen is approximately 2/3 the size of the SP and GBA screens while maintaining the same resolution (240×160 pixels) but now has a higher quality backlit display with adjustable brightness. Included with the system are two additional faceplates which can be swapped to give the system a new look; Nintendo of America sold additional faceplates on its online store. In Europe, the Game Boy Micro comes with a single faceplate. In Japan, a special Mother 3 limited edition Game Boy Micro was released with the game in the Mother 3 Deluxe Box. Unlike the Game Boy Advance and Game Boy Advance SP, the Game Boy Micro is unable to play any original Game Boy or Game Boy Color games, only playing Game Boy Advance titles (with the exception of the Nintendo e-Reader, discontinued in America, but still available in Japan)."),
    Hero(photo: UIImage(named: "nds")!, name: "Nintendo DS", description: "The Nintendo DS (abbreviated to DS) is a dual-screen handheld game console developed and released by Nintendo. The device went on sale in North America on November 21, 2004. The DS, short for 'Developers' System' or 'Dual Screen',[1] introduced distinctive new features to handheld gaming: an LCD screen working in tandem with a touchscreen, a built-in microphone, and support for wireless connectivity.[2] Both screens are encompassed within a clamshell design similar to the Game Boy Advance SP. The Nintendo DS also features the ability for multiple DS consoles to directly interact with each other over Wi-Fi within a short range without the need to connect to an existing wireless network. Alternatively, they could interact online using the now-discontinued Nintendo Wi-Fi Connection service."),
    Hero(photo: UIImage(named: "nds-lite")!, name: "Nintendo DS Lite", description: "The Nintendo DS Lite (abbreviated to DS Lite) is a dual-screen handheld game console developed and manufactured by Nintendo. It is a slimmer, brighter, and more lightweight redesign of the original Nintendo DS. It was announced on January 26, 2006, more than a month before its initial release in Japan on March 2, 2006 due to overwhelming demand for the original model. [3] It has been released in Australia, North America, Europe, New Zealand, Singapore, and defined regions in South America, the Middle East, and East Asia. As of December 31, 2013, shipments of the DS Lite have reached 93.86 million units worldwide, according to Nintendo. It was the final handheld to have backwards compatibility with Game Boy Advance games."),
    Hero(photo: UIImage(named: "dsi")!, name: "Nintendo DSi", description: "The Nintendo DSi (abbreviated to DSi)[5] is a dual-screen handheld game console released by Nintendo. The console launched in Japan on November 1, 2008, and worldwide beginning in April 2009. It is the third iteration of the Nintendo DS, and its primary market rival is Sony's PlayStation Portable (PSP). Development of the DSi began in late 2006, and the handheld was unveiled during an October 2008 Nintendo conference in Tokyo. Consumer demand convinced Nintendo to produce a slimmer handheld with larger screens than the DS Lite. Consequently, Nintendo removed the Game Boy Advance (GBA) cartridge slot to improve portability without sacrificing durability."),
    Hero(photo: UIImage(named: "nds-xl")!, name: "Nintendo DSi XL", description: "The Nintendo DSi XL (abbreviated to DSi XL) features larger screens, and a greater overall size, than the original DSi. It is the fourth and final DS model, the first to be available as a pure size variation.[6] Iwata said that cost restraints had, until then, limited the screen size and multiplayer aspects of portable game consoles, and that the DSi XL offers 'an improved view angle on the screens', which makes it the first portable system that can be enjoyed with people surrounding the gamer.[6] He argued that this introduces a new method of playing portable video games, wherein those surrounding the game player can also join in one way or the other to the gameplay.'[6] While the original DSi was specifically designed for individual use, Iwata suggested that DSi XL buyers give the console a 'steady place on a table in the living room,' so that it might be shared by multiple household members."),
]