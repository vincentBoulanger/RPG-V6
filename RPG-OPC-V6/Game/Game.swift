//
//  Game.swift
//  RPG-OPC-V6
//
//  Created by VINCENT BOULANGER on 07/03/2018.
//  Copyright © 2018 VBoulanger. All rights reserved.
//

import Foundation

class Game {
    
 var tabTeams = [Team]()
    
    func startGame () {

            print("@@@@@@@ Start programm  @@@@@@@@@@ ")
            introStartGame()
            for i in 1...2 {
                print("===================================")
                print("Joueur \(i), entrez votre pseudo : ")
                let team = createTeam()
                tabTeams.append(team)
                statsTeams()
          
               
            }

            startBattle()
            print("Joueur 1, choisissez un membre de votre équipe ")
        choseMyHero()
    //            let team = createTeam()
    //            tabTeams.append(team)
             //   let test = tabTeams[i].heroes[i].stuff.damage
       
        print("@@@@@@@@@@@@@@ End program  @@@@@@@@@@@@@@@ ")
    }
  
    
    
    func introStartGame() { // first display : Story
        print("===================")
        print("Vous pénétrez dans les catacombes au péril de votre vie !")
        print(" L'ambiance est lugubre. Un frisson vous parcoure le dos. Après cette quête vous découvrirez qui vous êtes réellement! Vous avancez dans l'obscurité ! ")
        print("Soudain à la lueur d'une torche ! Vous vous retrouvez nez à nez avec une autre bande de mercenaires ! C'est l'affrontement ! La partie commence : ")
    }
    
    func createTeam() -> Team { // composer une équipe
        let team = Team()
        team.createHeroes()
        return team
    }
   
    func statsTeams() {
        print("Résumé des deux équipes")
        print("")
        for i in tabTeams {
            print("1 - \(i.heroes[0].nameHero), le \(i.heroes[0].descriptionClassHero) possède \(i.heroes[0].lifePoints) de vie et une attaque de \(i.heroes[0].stuff.damage)")
            print("2 - \(i.heroes[1].nameHero), le \(i.heroes[1].descriptionClassHero) possède \(i.heroes[1].lifePoints) de vie et une attaque de \(i.heroes[1].stuff.damage)")
            print("3 - \(i.heroes[2].nameHero), le \(i.heroes[2].descriptionClassHero) possède \(i.heroes[2].lifePoints) de vie et une attaque de \(i.heroes[2].stuff.damage)")
            print("==================================================================")
            }
        }
   
    

    
    func startBattle() {
        
            print("=============================  Start Battle  ===================================")
            print("=====================@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@===================")
            print("LE COMBAT COMMENCE ! ")
            print("")
        
    }
    
        func choseMyHero() {
            let team = Team()
            var tabBattle = [Hero]()
            let heroChoicePlayer = team.myInputInt()

            switch heroChoicePlayer {
                case 1:
                    print("1 - \(tabTeams[0].heroes[0].nameHero), le \(tabTeams[0].heroes[0].descriptionClassHero) possède \(tabTeams[0].heroes[0].lifePoints) de vie et une attaque de \(tabTeams[0].heroes[0].stuff.damage)")
                   tabBattle.append(tabTeams[0].heroes[0])
                case 2:
                    print("2 - \(tabTeams[0].heroes[1].nameHero), le \(tabTeams[0].heroes[1].descriptionClassHero) possède \(tabTeams[0].heroes[1].lifePoints) de vie et une attaque de \(tabTeams[1].heroes[1].stuff.damage)")
                    tabBattle.append(tabTeams[0].heroes[1])
                case 3:
                    print("3 - \(tabTeams[0].heroes[2].nameHero), le \(tabTeams[0].heroes[2].descriptionClassHero) possède \(tabTeams[0].heroes[2].lifePoints) de vie et une attaque de \(tabTeams[0].heroes[2].stuff.damage)")
                    tabBattle.append(tabTeams[0].heroes[2])
                default:
                    print("return")
            }
            print("Vous  avez choisi le \(tabBattle.description)")
            for i in tabBattle {
                if i.descriptionClassHero == "WARRIOR" ||  i.descriptionClassHero == "NAIN" || i.descriptionClassHero == "COLOSSE" {
                    print("MENU pour choisir un enemy ")
                    
                } else if i.descriptionClassHero == "MAGICIEN" {
                    print("chosir un héro allié")
                    choseMyHero()
                    print("Vous avez soigné ce héros")
                }
            }
        }
        
        func choseEnemy() {
            let team = Team()
            var tabBattle = [Hero]()
            print("Choisis un héros ennemi")
            let heroChoicePlayer = team.myInputInt()
            
            switch heroChoicePlayer {
                    case 1:
                        print("4 - \(tabTeams[1].heroes[0].nameHero), le \(tabTeams[1].heroes[0].descriptionClassHero) possède \(tabTeams[1].heroes[0].lifePoints) de vie et une attaque de \(tabTeams[0].heroes[0].stuff.damage)")
                        tabBattle.append(tabTeams[0].heroes[0])
                    case 2:
                        print("4 - \(tabTeams[1].heroes[1].nameHero), le \(tabTeams[1].heroes[1].descriptionClassHero) possède \(tabTeams[1].heroes[1].lifePoints) de vie et une attaque de \(tabTeams[1].heroes[1].stuff.damage)")
                        tabBattle.append(tabTeams[0].heroes[1])
                    case 3:
                        print("4 - \(tabTeams[1].heroes[2].nameHero), le \(tabTeams[1].heroes[2].descriptionClassHero) possède \(tabTeams[1].heroes[2].lifePoints) de vie et une attaque de \(tabTeams[0].heroes[2].stuff.damage)")
                        tabBattle.append(tabTeams[0].heroes[2])
                    default:
                        print("return")
                    }
                    print("Vous  avez choisi le \(tabBattle.description)")
        }
    
//        func choseHero() {
//            let tabBattle = [Hero]()
//
//    }
}
