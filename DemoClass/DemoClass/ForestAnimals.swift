//
//  ForestAnimals.swift
//  DemoClass
//
//  Created by Thien Chuong on 10/6/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
struct AnimalStruct{
    var animalArray: [OriginalAnimal] = []
    
    private func animalNo(type:String)->Int{
        var result:Int=0
        var currentType:String
        for ele in animalArray{
            currentType = "\(NSStringFromClass(ele.dynamicType))"
            currentType = currentType.componentsSeparatedByString(".")[1]
            if currentType == type {
                result++
            }
        }
        return result
    }
    
    var doggyNo:Int{
        return self.animalNo("Doggy")
    }
    var cattyNo:Int{
        return self.animalNo("Catty")
    }
    var tigerNo:Int{
        return self.animalNo("Tiger")
    }
    var horseNo:Int{
        return self.animalNo("Horse")
    }
    var mouseNo:Int{
        return self.animalNo("Mouse")
    }
    var rabbitNo:Int{
        return self.animalNo("Rabbit")
    }
}

func +(ani1:OriginalAnimal,ani2:OriginalAnimal)->OriginalAnimal?{
    
    var result:OriginalAnimal?
    if ani1.sex != ani2.sex{
        let Sex=["Mail","Femail"]
        var randomSexIndex = Int(arc4random_uniform(2))
        var name=ani1.name
        var diedAge=ani1.diedAge
        var sexAge=ani1.sexAge
        var sex=Sex[randomSexIndex]
        var sound=ani1.sound;
        
        switch(name){
        case "Dog":
            result = Doggy(sex: ani1.sex)
            break;
        case "Cat":
            result = Catty(sex: ani1.sex)
            break;
        case "Tiger":
            result = Tiger(sex: ani1.sex)
            break;
        case "Horse":
            result = Horse(sex: ani1.sex)
            break;
        case "Rabbit":
            result = Rabbit(sex: ani1.sex)
            break;
        case "Mouse":
            result = Mouse(sex: ani1.sex)
            break;
        default:
            break
            
        }
        
    }else{
        result=nil
    }
    
    return result;
}

class ForestAnimals: ConsoleScreen {
    // var Animals:[OriginalAnimal] = []
    var AnimalTypes=["Dog","Cat","Tiger","Rabbit","Horse","Mouse"]
    let Sex=["Mail","Femail"]
    var Animals:AnimalStruct=AnimalStruct()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAnimals()
        living()
    }
    
    func createAnimals(){
        
        for i in 1...100 {
            var randomSexIndex = Int(arc4random_uniform(2))
            var randomAnimalIndex=Int(arc4random_uniform(6))
            
            var ani:OriginalAnimal?
            switch (AnimalTypes[randomAnimalIndex]){
            case AnimalTypes[0]:
                
                ani = Doggy(sex: Sex[randomSexIndex]);
            case AnimalTypes[1]:
                
                ani = Catty(sex: Sex[randomSexIndex]);
            case AnimalTypes[2]:
                
                ani = Tiger(sex: Sex[randomSexIndex]);
            case AnimalTypes[3]:
                
                ani = Rabbit(sex: Sex[randomSexIndex]);
            case AnimalTypes[4]:
                
                ani = Horse(sex: Sex[randomSexIndex]);
            case AnimalTypes[5]:
                
                ani = Mouse(sex: Sex[randomSexIndex]);
            default:
                self.writeln("con khac loai");
                
            }
            Animals.animalArray.append(ani!)
            
        }
        self.writeln("\(Animals.animalArray.count) con vat bao gom:")
        self.writeln("\(Animals.doggyNo) con cho")
        self.writeln("\(Animals.cattyNo) con meo")
        self.writeln("\(Animals.tigerNo) con cop")
        self.writeln("\(Animals.horseNo) con ngua")
        self.writeln("\(Animals.rabbitNo) con tho")
        self.writeln("\(Animals.mouseNo) con chuot")
        
    }
    func living(){
        let life=60
        for y in 1...life{
            
            for i in 0...(Animals.animalArray.count-1){
                
                if(i>=Animals.animalArray.count ){
                    break;
                }
                
                var ani1=Animals.animalArray[i]
                if (ani1.sexAge.canSex && !ani1.sexAge.didSex){
                    for j in 0...(Animals.animalArray.count-1){
                        var ani2=Animals.animalArray[j]
                        if (ani2.sexAge.canSex && !ani2.sexAge.didSex){
                            
                            if(i != j && ani1.name==ani2.name){
                                var rs:OriginalAnimal? = (ani1+ani2)
                                if(rs != nil){
                                    Animals.animalArray.append(rs!)
                                    self.writeln(" doi f1: \(rs!.name)")
                                    ani1.sexAge.didSex=true
                                    ani2.sexAge.didSex=true
                                    break;
                                }
                            }
                        }
                    }
                    if(ani1.diedAge==ani1.age){
                        Animals.animalArray.removeAtIndex(i)
                        println("tuoi chet con \(ani1.name) la \(ani1.diedAge)" );
                    }
                    
                }
                ani1.age++
                
                
            }
            
        }
        self.writeln("\n sau \(life) nam co \(Animals.animalArray.count) con vat bao gom:")
        self.writeln("\(Animals.doggyNo) con cho")
        self.writeln("\(Animals.cattyNo) con meo")
        self.writeln("\(Animals.tigerNo) con cop")
        self.writeln("\(Animals.horseNo) con ngua")
        self.writeln("\(Animals.rabbitNo) con tho")
        self.writeln("\(Animals.mouseNo) con chuot")
    }
}
