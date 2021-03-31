//
//  Constant.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 25/02/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation

let mainPath = "SoundResource"
let soundFormat = ".mp3"

struct VegetableConsts {
    public static let brinjal  = "brinjal"
    public static let capsicum = "capsicum"
    public static let carrot   = "carrot"
    public static let cucumber = "cucumber"
    public static let onion    = "onion"
    public static let peas     = "peas"
    public static let potato   = "potato"
    public static let spinach  = "spinach"
    public static let tomato   = "tomato"
    public static let turnip   = "turnip"
}


struct RelationsConsts {
    public static let brother       = "brother"
    public static let father        = "father"
    public static let grandfather   = "grandfather"
    public static let grandmother   = "grandmother"
    public static let mother        = "mother"
    public static let sister        = "sister"
}

struct ColorConsts {
    public static let black       = "black"
    public static let blonde      = "blonde"
    public static let green       = "green"
    public static let red         = "red"
    public static let white       = "white"
}

struct NumberConsts {
    public static let one            = "one"
    public static let two            = "two"
    public static let three          = "three"
    public static let four           = "four"
    public static let five           = "five"
    public static let six            = "six"
    public static let seven          = "seven"
    public static let eigth          = "eight"
    public static let nine           = "nine"
    public static let ten            = "ten"
    public static let eleven         = "eleven"
    public static let twelve         = "twelve"
    public static let thirteen       = "thirteen"
    public static let fourteen       = "fourteen"
    public static let fifteen        = "fifteen"
    public static let sixteen        = "sixteen"
    public static let seventeen      = "seventeen"
    public static let eighteen       = "eighteen"
    public static let nineteen       = "nineteen"
    public static let twenty         = "twenty"
}

struct FruitsConsts {
    public static let apple             = "apple"
    public static let banana            = "banana"
    public static let grapes            = "grapes"
    public static let mango             = "mango"
    public static let melon             = "melon"
    public static let orange            = "orange"
    public static let pear              = "pear"
    public static let plum              = "plum"
    public static let pomegranade       = "pomegranade"
    public static let watermelon        = "watermelon"
}

struct AnimalsConsts {
    public static let bear       = "bear"
    public static let cat        = "cat"
    public static let cow        = "cow"
    public static let dog        = "dog"
    public static let horse      = "horse"
    public static let monkey     = "monkey"
    public static let rabbit     = "rabbit"
    public static let rat        = "rat"
    public static let tiger      = "tiger"
    public static let wolf       = "wolf"
}

func getSoundPath(_ category: Category , _ sound: String) -> String{
    return (mainPath + "/" + category.rawValue + "/" + sound + soundFormat)
}

enum Category: String{
    case Animals
    case Colors
    case Fruits
    case Numbers
    case Relations
    case Vegetables
}
