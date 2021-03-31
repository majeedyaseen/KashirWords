//
//  Data.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 25/02/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation


let vegetableData: [SoundModel] = [
    SoundModel(title: VegetableConsts.brinjal.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.brinjal), imageName: ""),
    SoundModel(title: VegetableConsts.capsicum.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.capsicum), imageName: ""),
    SoundModel(title: VegetableConsts.carrot.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.carrot), imageName: ""),
    SoundModel(title: VegetableConsts.cucumber.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.cucumber), imageName: ""),
    SoundModel(title: VegetableConsts.onion.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.onion), imageName: ""),
    SoundModel(title: VegetableConsts.peas.capitalized, audioFileLocation:
        getSoundPath(Category.Vegetables , VegetableConsts.peas), imageName: ""),
    SoundModel(title: VegetableConsts.potato.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.potato), imageName: ""),
    SoundModel(title: VegetableConsts.spinach.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.spinach), imageName: ""),
    SoundModel(title: VegetableConsts.tomato.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.tomato), imageName: ""),
    SoundModel(title: VegetableConsts.turnip.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.turnip), imageName: "")


]

let colorsData : [SoundModel] = [
        SoundModel(title: ColorConsts.black.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.black), imageName: ""),
        SoundModel(title: ColorConsts.blonde.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.blonde), imageName: ""),
        SoundModel(title: ColorConsts.green.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.green), imageName: ""),
        SoundModel(title: ColorConsts.red.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.red), imageName: ""),
        SoundModel(title: ColorConsts.white.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.white), imageName: "")
]
let numbersData : [SoundModel] = [
    SoundModel(title: NumberConsts.one, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.one), imageName: ""),
    SoundModel(title: NumberConsts.two, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.two), imageName: ""),
    SoundModel(title: NumberConsts.three, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.three), imageName: ""),
    SoundModel(title: NumberConsts.four, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.four), imageName: ""),
    SoundModel(title: NumberConsts.five, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.five), imageName: ""),
    SoundModel(title: NumberConsts.six, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.six), imageName: ""),
    SoundModel(title: NumberConsts.seven, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.seven), imageName: ""),
    SoundModel(title: NumberConsts.eigth, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.eigth), imageName: ""),
    SoundModel(title: NumberConsts.nine, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.nine), imageName: ""),
    SoundModel(title: NumberConsts.ten, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.ten), imageName: ""),
    SoundModel(title: NumberConsts.eleven, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.eleven), imageName: ""),
    SoundModel(title: NumberConsts.twelve, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.twelve), imageName: ""),
    SoundModel(title: NumberConsts.thirteen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.thirteen), imageName: ""),
    SoundModel(title: NumberConsts.fourteen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.fourteen), imageName: ""),
    SoundModel(title: NumberConsts.fifteen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.fifteen), imageName: ""),
    SoundModel(title: NumberConsts.sixteen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.sixteen), imageName: ""),
    SoundModel(title: NumberConsts.seventeen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.seventeen), imageName: ""),
    SoundModel(title: NumberConsts.eighteen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.eighteen), imageName: ""),
    SoundModel(title: NumberConsts.nineteen, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.nineteen), imageName: ""),
    SoundModel(title: NumberConsts.twenty, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.twenty), imageName: ""),

]

let fruitsData : [SoundModel] = [
    SoundModel(title: FruitsConsts.apple, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.apple), imageName: ""),
    SoundModel(title: FruitsConsts.banana, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.banana), imageName: ""),
    SoundModel(title: FruitsConsts.grapes, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.grapes), imageName: ""),
    SoundModel(title: FruitsConsts.mango, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.mango), imageName: ""),
    SoundModel(title: FruitsConsts.melon, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.melon), imageName: ""),
    SoundModel(title: FruitsConsts.orange, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.orange), imageName: ""),
    SoundModel(title: FruitsConsts.pear, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.pear), imageName: ""),
    SoundModel(title: FruitsConsts.plum, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.plum), imageName: ""),
    SoundModel(title: FruitsConsts.pomegranade, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.pomegranade), imageName: ""),
    SoundModel(title: FruitsConsts.watermelon, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.watermelon), imageName: "")
    ]

let animalsData : [SoundModel] = [
    SoundModel(title: AnimalsConsts.bear, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.bear), imageName: ""),
    SoundModel(title: AnimalsConsts.cat, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.cat), imageName: ""),
    SoundModel(title: AnimalsConsts.cow, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.cow), imageName: ""),
    SoundModel(title: AnimalsConsts.dog, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.dog), imageName: ""),
    SoundModel(title: AnimalsConsts.horse, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.horse), imageName: ""),
    SoundModel(title: AnimalsConsts.monkey, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.monkey), imageName: ""),
    SoundModel(title: AnimalsConsts.rabbit, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.rabbit), imageName: ""),
    SoundModel(title: AnimalsConsts.rat, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.rat), imageName: ""),
    SoundModel(title: AnimalsConsts.tiger, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.tiger), imageName: ""),
    SoundModel(title: AnimalsConsts.wolf, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.wolf), imageName: ""),
    ]


let relationsData : [SoundModel] = [
    SoundModel(title: RelationsConsts.brother.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.brother), imageName: ""),
        SoundModel(title: RelationsConsts.father.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.father), imageName: ""),
        SoundModel(title: RelationsConsts.grandfather.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.grandfather), imageName: ""),
        SoundModel(title: RelationsConsts.grandmother.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.grandmother), imageName: ""),
        SoundModel(title: RelationsConsts.mother.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.mother), imageName: ""),
        SoundModel(title: RelationsConsts.sister.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.sister), imageName: "")
]
