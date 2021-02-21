import Foundation

class DataPlayers {
    
    //Static общее для всех объектов класса.
    //Когда мы определяем любую переменную как статичскую, она прикрепляется к классу, а не к объекту.
    static let sharedInstance = DataPlayers()
    
    let names = ["JAMES", "CURRY", "DONCIC", "JOKIC", "LEONARD",
                 "DAVIS", "WILLIAMSON", "GEORGE", "WIGGINS", "WOOD",
                 
                 "DURANT", "BEAL", "BUTLER", "IRVING", "ANTETOKOUNMPO"]
        
//                 "ANTHONY", "BOOKER",  "DAVIS",
//                  "GILGEOUS-ALEXANDER", "INGRAM",
//                 "LILLARD", "MCCOLLUM", "MITCHELL", "MORANT",
//                 "PAUL", "THOMPSON",
//                 "ADEBAYO",  "BROWN",
//                  "EMBIID", "GRANT", "HARDEN", "HAYWARD",
//                  "LAVINE", "RANDLE", "ROSE", "SABONIS",
//                 "SEXTON", "SIMMONS", "TATUM", "WESTBROOK", "YOUNG"
    
    let surNames = ["LEBRON", "STEPHEN", "LUKA", "NIKOLA", "KAWHI",
                    "ANTHONY", "ZION", "PAUL", "ANDREW", "CHRISTIAN",
                    
                    "KEVIN", "BRADLEY", "JIMMY", "KYRIE", "GIANNIS"]
                    
//                    "CARMELO", "DEVIN",
//                     "SHAI", "BRANDON",
//                     "DAMIAN", "CJ", "DONOVAN", "JA",
//                    "CHRIS", "KLAY",
//                    "BAM",   "JAYLEN",
//                     "JOEL", "JERAMI", "JAMES", "GORDON",
//                     "ZACH", "JULIUS", "DERRICK", "DOMANTAS",
//                    "COLLIN", "BEN", "JAYSON", "RUSSELL", "TRAE"
    
    let avatars = ["JLEBRON", "CSTEPHEN", "DLUKA", "JNIKOLA", "LKAWHI",
                   "DANTHONY", "WZION", "GPAUL", "WANDREW", "WCHRISTIAN",
                   
                   "DKEVIN", "BBRADLEY", "BJIMMY", "IKYRIE", "AGIANNIS"]
                   
//                    "ACARMELO", "BDEVIN",
//                   "GSHAI", "IBRANDON",
//                   "LDAMIAN", "MCJ", "MDONOVAN", "MJA",
//                  "PCHRIS", "TKLAY",
//                  "ABAM",   "BJAYLEN",
//                   "EJOEL", "GJERAMI", "HJAMES", "HGORDON",
//                   "LZACH", "RJULIUS", "RDERRICK", "SDOMANTAS",
//                  "SCOLLIN", "SBEN", "TJAYSON", "WRUSSELL", "YTRAE"
    
    let teams = ["LAL", "GSW", "DAL", "DEN", "LAC",
                 "LAL", "NOP", "LAC", "GSW", "HOU",
                 
                 "BKN", "WAS", "MIA", "BKN", "MIL"]
        
//                "POR", "PHX",
//                  "OKC", "NOP",
//                  "POR", "POR", "UTA", "MEM",
//                 "PHX",  "GSW",
//                 "MIA",   "BOS",
//                  "PHI", "DET", "BKN", "CHA",
//                  "CHI", "NYK", "NYK", "IND",
//                 "CLE", "PHI", "BOS", "WAS", "ATL"
    
    let conference = ["WEST", "WEST", "WEST", "WEST", "WEST",
                      "WEST", "WEST", "WEST", "WEST", "WEST",
                      
                      "EAST", "EAST", "EAST", "EAST", "EAST"]
                      
//                      "WEST", "WEST", "WEST", "WEST", "WEST",
//                      "WEST", "WEST", "WEST", "WEST", "WEST",
//                      "EAST", "EAST", "EAST", "EAST", "EAST",
//                      "EAST", "EAST", "EAST", "EAST", "EAST",
//                      "EAST", "EAST", "EAST", "EAST", "EAST"
    
    let rating = [5, 4, 4, 3, 5,
                  5, 3, 4, 3, 5,
                  5, 4, 5, 3, 1]
    
    let number = [23, 30, 77, 15, 2,
                   3,  1, 13, 22, 35,
                    
                   7,  3, 22, 11, 34]
    
    let profile = ["AGE 36 years BIRTHDATE December 30, 1984 HEIGHT 2.06m WEIGHT 113kg",
                   "AGE 32 years BIRTHDATE March 14, 1988 HEIGHT 1.91m WEIGHT 84kg",
                   "AGE 21 years BIRTHDATE February 28, 1999 HEIGHT 2.01m WEIGHT 104kg",
                   "AGE 26 years BIRTHDATE February 19, 1995 HEIGHT 2.11m WEIGHT 129kg",
                   "AGE 29 years BIRTHDATE June 29, 1991 HEIGHT 2.01m WEIGHT 102kg",
                   "AGE 27 years BIRTHDATE March 11, 1993 HEIGHT 2.08m WEIGHT 115kg",
                   "AGE 20 years BIRTHDATE July 6, 2000 HEIGHT 2.01m WEIGHT 129kg",
                   "AGE 30 years BIRTHDATE May 2, 1990 HEIGHT 2.03m WEIGHT 100kg",
                   "AGE 25 years BIRTHDATE February 23, 1995 HEIGHT 2.01m WEIGHT 89kg",
                   "AGE 25 years BIRTHDATE September 27, 1995 HEIGHT 2.08m WEIGHT 97kg",
                   
                   "AGE 32 years BIRTHDATE September 29, 1988 HEIGHT 2.08m WEIGHT 109kg",
                   "AGE 27 years BIRTHDATE June 28, 1993 HEIGHT 1.91m WEIGHT 94kg",
                   "AGE 31 years BIRTHDATE September 14, 1989 HEIGHT 2.01m WEIGHT 104kg",
                   "AGE 28 years BIRTHDATE March 23, 1992 HEIGHT 1.88m WEIGHT 88kg",
                   "AGE 26 years BIRTHDATE December 6, 1994 HEIGHT 2.11m WEIGHT 110kg"]
    
    let reviews = ["1", "2", "3", "4", "5",
                   "6", "7", "8", "9", "10",
                   "11", "12", "13", "14", "15"]
}
