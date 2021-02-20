//
//  DataPlayers.swift
//  Lesson14
//
//  Created by Валерий Игнатьев on 19.02.2021.
//

import Foundation

class DataPlayers {
    
    //Static общее для всех объектов класса.
    //Когда мы определяем любую переменную как статичскую, она прикрепляется к классу, а не к объекту.
    static let sharedInstance = DataPlayers()
    
    let names = ["ANTHONY", "BOOKER", "CURRY", "DAVIS", "DONCIC",
                 "GEORGE", "GILGEOUS-ALEXANDER", "INGRAM", "JAMES", "JOKIC",
                 "LEONARD", "LILLARD", "MCCOLLUM", "MITCHELL", "MORANT",
                 "PAUL", "THOMPSON", "WIGGINS", "WILLIAMSON", "WOOD",
                 
                 "ADEBAYO", "ANTETOKOUNMPO", "BEAL", "BROWN", "BUTLER",
                 "DURANT", "EMBIID", "GRANT", "HARDEN", "HAYWARD",
                 "IRVING", "LAVINE", "RANDLE", "ROSE", "SABONIS",
                 "SEXTON", "SIMMONS", "TATUM", "WESTBROOK", "YOUNG"]
    
    let surNames = ["CARMELO", "DEVIN", "STEPHEN", "ANTHONY", "LUKA",
                    "PAUL", "SHAI", "BRANDON", "LEBRON", "NIKOLA",
                    "KAWHI", "DAMIAN", "CJ", "DONOVAN", "JA",
                    "CHRIS", "KLAY", "ANDREW", "ZION", "CHRISTIAN",
                   
                    "BAM", "GIANNIS", "BRADLEY", "JAYLEN", "JIMMY",
                    "KEVIN", "JOEL", "JERAMI", "JAMES", "GORDON",
                    "KYRIE", "ZACH", "JULIUS", "DERRICK", "DOMANTAS",
                    "COLLIN", "BEN", "JAYSON", "RUSSELL", "TRAE"]
    
    let avatars = ["ACARMELO", "BDEVIN", "CSTEPHEN", "DANTHONY", "DLUKA",
                  "GPAUL", "GSHAI", "IBRANDON", "JLEBRON", "JNIKOLA",
                  "LKAWHI", "LDAMIAN", "MCJ", "MDONOVAN", "MJA",
                  "PCHRIS", "TKLAY", "WANDREW", "WZION", "WCHRISTIAN",
                 
                  "ABAM", "AGIANNIS", "BBRADLEY", "BJAYLEN", "BJIMMY",
                  "DKEVIN", "EJOEL", "GJERAMI", "HJAMES", "HGORDON",
                  "IKYRIE", "LZACH", "RJULIUS", "RDERRICK", "SDOMANTAS",
                  "SCOLLIN", "SBEN", "TJAYSON", "WRUSSELL", "YTRAE"]
    
    let teams = ["POR", "PHX", "GSW", "LAL", "DAL",
                 "LAC", "OKC", "NOP", "LAL", "DEN",
                 "LAC", "POR", "POR", "UTA", "MEM",
                 "PHX", "GSW", "GSW", "NOP", "HOU",
                 
                 "MIA", "MIL", "WAS", "BOS", "MIA",
                 "BKN", "PHI", "DET", "BKN", "CHA",
                 "BKN", "CHI", "NYK", "NYK", "IND",
                 "CLE", "PHI", "BOS", "WAS", "ATL"]
    
    let conference = ["WEST", "WEST", "WEST", "WEST", "WEST",
                      "WEST", "WEST", "WEST", "WEST", "WEST",
                      "WEST", "WEST", "WEST", "WEST", "WEST",
                      "WEST", "WEST", "WEST", "WEST", "WEST",
                     
                      "EAST", "EAST", "EAST", "EAST", "EAST",
                      "EAST", "EAST", "EAST", "EAST", "EAST",
                      "EAST", "EAST", "EAST", "EAST", "EAST",
                      "EAST", "EAST", "EAST", "EAST", "EAST"]
    
    let rating = [2, 1, 5, 5, 5,
                  3, 2, 3, 5, 1,
                  2, 2, 3, 4, 4,
                  3, 1, 2, 5, 3,
                 
                  2, 4, 3, 4, 5,
                  4, 2, 1, 5, 1,
                  3, 4, 3, 1, 2,
                  3, 2, 1, 3, 5]
}
