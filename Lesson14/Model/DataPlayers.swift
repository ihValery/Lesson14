import Foundation

class DataPlayers {
    
    //Static общее для всех объектов класса.
    //Когда мы определяем любую переменную как статичскую, она прикрепляется к классу, а не к объекту.
    static let sharedInstance = DataPlayers()
    
    let names = ["JAMES", "CURRY", "DONCIC", "JOKIC", "LEONARD",
                 "DAVIS", "WILLIAMSON", "GEORGE", "WIGGINS", "WOOD",
                 "DURANT", "BEAL", "BUTLER", "IRVING", "ANTETOKOUNMPO"]
    
    let surNames = ["LEBRON", "STEPHEN", "LUKA", "NIKOLA", "KAWHI",
                    "ANTHONY", "ZION", "PAUL", "ANDREW", "CHRISTIAN",
                    "KEVIN", "BRADLEY", "JIMMY", "KYRIE", "GIANNIS"]
    
    let avatars = ["JLEBRON", "CSTEPHEN", "DLUKA", "JNIKOLA", "LKAWHI",
                   "DANTHONY", "WZION", "GPAUL", "WANDREW", "WCHRISTIAN",
                   "DKEVIN", "BBRADLEY", "BJIMMY", "IKYRIE", "AGIANNIS"]
    
    let teams = ["LAL", "GSW", "DAL", "DEN", "LAC",
                 "LAL", "NOP", "LAC", "GSW", "HOU",
                 "BKN", "WAS", "MIA", "BKN", "MIL"]
    
    let conference = ["WEST", "WEST", "WEST", "WEST", "WEST",
                      "WEST", "WEST", "WEST", "WEST", "WEST",
                      "EAST", "EAST", "EAST", "EAST", "EAST"]
    
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
    
    let reviews = [["James netted 19 points (7-21 FG, 1-8 3Pt, 4-4 FT), nine rebounds, nine assists, a steal and a blocked shot across 37 minutes in Saturday's 96-94 loss to the Heat.","James (ankle) will play Saturday against the Heat, Kyle Goon of The Orange County Register reports.","James (ankle) is probable for Saturday's game against the Heat.","James scored 32 points (14-23 FG, 1-6 3Pt, 3-6 FT) and added eight rebounds and seven assists in the Lakers' 109-98 loss to the Nets on Thursday."],
                   ["Curry is not feeling well and is out for Saturday's game against the Hornets, Shams Charania of The Athletic reports.","Curry did not start Saturday's game against the Hornets.","Curry went for 29 points (11-29 FG, 6-16 3Pt, 1-1 FT), 11 assists and seven rebounds over 37 minutes during Friday's loss to the Magic."],
                   ["Doncic and the Mavericks will not play the Rockets on Friday as the game has been postponed, Shams Charania of The Athletic reports.","Doncic registered 44 points (14-20 FG, 5-8 3Pt, 11-12 FT), nine assists and seven rebounds across 36 minutes in Sunday's 121-118 loss to the Trail Blazers."],
                   ["Jokic scored 16 points (5-8 FG, 1-2 3pt, 5-5 FT) to go along with 12 rebounds, 10 assists, four steals and one block across 33 minutes in Friday's win over the Cavaliers.", "Jokic (thumb) is available and starting Wednesday against the Wizards, Mike Singer of The Denver Post reports."],
                   ["Leonard (lower leg) recorded 29 points (10-24 FG, 0-4 3Pt, 9-10 FT), five rebounds, four assists and one block across 38 minutes Friday in the Clippers' 116-112 win over the Jazz.","Leonard (lower leg) is active and starting Friday's game against the Jazz, Mirjam Swanson of the Los Angeles Daily News reports.", "Leonard (lower leg) is questionable for Friday's game against the Jazz, Mirjam Swanson of the Los Angeles Daily News reports."],
                   
                   ["Lakers head coach Frank Vogel said Thursday that Davis (calf/Achilles) is facing a four-week recovery timetable, Jovan Buha of The Athletic reports.","Head coach Frank Vogel confirmed Tuesday that he expects Davis (calf/Achilles) to remain sidelined for the remainder of the first half, Mike Trudell of the Lakers' official site reports. It's unlikely we bring him back before the [All-Star] break, but we'll see, Vogel said of Davis.", "Davis (calf) will be re-evaluated in 2-to-3 weeks after undergoing an MRI on Monday, Adrian Wojnarowski of ESPN reports.", "Davis suffered an aggravation on his right Achilles tendinosis during Sunday's game against Denver, Adrian Wojnarowski of ESPN reports. He'll remain with the Lakers for their ongoing three-game road trip and undergo an MRI on Monday in Minneapolis."],
                   ["Williamson had 23 points (8-11 FG, 7-10 FT), five rebounds and four assists across 31 minutes in Friday's loss against the Suns."],
                   ["George (toe) played 27 minutes Friday in the Clippers' 116-112 win over the Jazz, tallying 15 points (6-14 FG, 1-4 3Pt, 2-2 FT), six rebounds, five assists, one steal and one block."],
                   ["Wiggins went for 16 points (7-15 FG, 1-4 3Pt, 1-1 FT), four rebounds, two assists and two steals across 32 minutes during the Warriors' 124-120 loss Friday to the Magic.", "Wiggins recorded 19 points (8-15 FG, 2-6 3Pt, 1-2 FT), five rebounds, four assists and a steal across 33 minutes in Saturday's loss against the Hornets.", "Wiggins had 23 points (8-16 FG, 4-9 3Pt, 3-4 FT), eight rebounds and six turnovers in Wednesday night's overtime win over Miami."],
                   ["Wood (ankle) is listed as out for Monday's game against the Wizards."],
                   
                   ["Durant (hamstring) is out Sunday against the Clippers, Malika Andrews of ESPN.com reports.", "Durant (hamstring) is without a timetable for a return as the team is looking for him to show improved strength, Mark Medina of USA Today reports.", "Durant (hamstring) is out Thursday against the Lakers, Mark Stein of The New York Times reports."],
                   ["Beal totaled 37 points (16-27 FG, 2-8 3Pt, 3-4 FT), seven rebounds, three assists and two steals in a 118-111 win over Portland on Saturday."],
                   ["Butler produced 24 points (8-20 FG, 8-10 FT), eight rebounds, five assists and two steals across 34 minutes in Saturday's 96-94 win over the Lakers.", "Butler netted 13 points (6-13 FG, 0-1 3Pt, 1-2 FT), 10 rebounds, 13 assists and a steal across 35 minutes in Thursday's 118-110 win over the Kings.", "Butler had 13 points (6-15 FG, 1-2 3Pt), 12 rebounds, 11 assists and three steals in Wednesday night's overtime loss to Golden State.", "Butler totaled 30 points (10-19 FG, 0-2 3Pt, 10-10 FT), 10 rebounds, 10 assists and two steals in 38 minutes during Monday's 125-118 loss to the Clippers."],
                   ["Irving contributed 16 points (7-17 FG, 0-5 3Pt, 2-4 FT), seven rebounds, five assists and one steal in the Nets' 109-98 victory Thursday over the Lakers."],
                   ["Antetokounmpo totaled 23 points (8-20 FG, 0-4 3Pt, 7-13 FT), 12 rebounds, eight assists and two steals across 37 minutes in Thursday's 110-96 win over the Raptors.", "Antetokounmpo had 34 points (11-20 FG, 2-4 3Pt, 10-14 FT), 10 rebounds, eight assists, five steals and two blocks across 37 minutes in Tuesday's 124-113 loss to Toronto."]]
}
