import Foundation

class DataPlayers {
    
    //Static общее для всех объектов класса.
    //Когда мы определяем любую переменную как статичскую, она прикрепляется к классу, а не к объекту.
    static let sharedInstance = DataPlayers()
    
    let names = ["JAMES", "CURRY", "DONCIC", "JOKIC", "LEONARD",
                 "DAVIS", "WILLIAMSON", "GEORGE", "WIGGINS", "WOOD",
                 "DURANT", "BEAL", "BUTLER", "IRVING", "YOUNG"]
    
    let surNames = ["LEBRON", "STEPHEN", "LUKA", "NIKOLA", "KAWHI",
                    "ANTHONY", "ZION", "PAUL", "ANDREW", "CHRISTIAN",
                    "KEVIN", "BRADLEY", "JIMMY", "KYRIE", "TRAE"]
    
    let avatars = ["JLEBRON", "CSTEPHEN", "DLUKA", "JNIKOLA", "LKAWHI",
                   "DANTHONY", "WZION", "GPAUL", "WANDREW", "WCHRISTIAN",
                   "DKEVIN", "BBRADLEY", "BJIMMY", "IKYRIE", "YTRAE"]
    
    let teams = ["LAL", "GSW", "DAL", "DEN", "LAC",
                 "LAL", "NOP", "LAC", "GSW", "HOU",
                 "BKN", "WAS", "MIA", "BKN", "ATL"]
    
    let conference = ["WEST", "WEST", "WEST", "WEST", "WEST",
                      "WEST", "WEST", "WEST", "WEST", "WEST",
                      "EAST", "EAST", "EAST", "EAST", "EAST"]
    
    let rating = [5, 5, 4, 3, 2,
                  5, 4, 3, 3, 3,
                  4, 4, 5, 3, 5]
    
    let number = [23, 30, 77, 15, 2,
                   3,  1, 13, 22, 35,
                   7,  3, 22, 11, 11]
    
    let profile = ["AGE 36 years \nBIRTHDATE December 30, 1984 \nHEIGHT 2.06m \nWEIGHT 113kg",
                   "AGE 32 years \nBIRTHDATE March 14, 1988 \nHEIGHT 1.91m \nWEIGHT 84kg",
                   "AGE 21 years \nBIRTHDATE February 28, 1999 \nHEIGHT 2.01m \nWEIGHT 104kg",
                   "AGE 26 years \nBIRTHDATE February 19, 1995 \nHEIGHT 2.11m \nWEIGHT 129kg",
                   "AGE 29 years \nBIRTHDATE June 29, 1991 \nHEIGHT 2.01m \nWEIGHT 102kg",
                   "AGE 27 years \nBIRTHDATE March 11, 1993 \nHEIGHT 2.08m \nWEIGHT 115kg",
                   "AGE 20 years \nBIRTHDATE July 6, 2000 \nHEIGHT 2.01m \nWEIGHT 129kg",
                   "AGE 30 years \nBIRTHDATE May 2, 1990 \nHEIGHT 2.03m \nWEIGHT 100kg",
                   "AGE 25 years \nBIRTHDATE February 23, 1995 \nHEIGHT 2.01m \nWEIGHT 89kg",
                   "AGE 25 years \nBIRTHDATE September 27, 1995 \nHEIGHT 2.08m \nWEIGHT 97kg",
                   "AGE 32 years \nBIRTHDATE September 29, 1988 \nHEIGHT 2.08m \nWEIGHT 109kg",
                   "AGE 27 years \nBIRTHDATE June 28, 1993 \nHEIGHT 1.91m \nWEIGHT 94kg",
                   "AGE 31 years \nBIRTHDATE September 14, 1989 \nHEIGHT 2.01m \nWEIGHT 104kg",
                   "AGE 28 years \nBIRTHDATE March 23, 1992 \nHEIGHT 1.88m \nWEIGHT 88kg",
                   "AGE 22 years \nBIRTHDATE September 19, 1998 \nHEIGHT 1.85m \nWEIGHT 82kg"]
    
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
                   ["Young generated 35 points (10-19 FG, 4-7 3Pt, 11-13 FT), 15 assists, six rebounds and one steal over 36 minutes in Sunday's 123-115 win over the Nuggets.", "Young went for 31 points (10-16 FG, 3-7 FT, 8-9 FT), 11 assists, four rebounds and three steals across 37 minutes of Friday's loss to the Celtics.", "Young scored a game-high 40 points (14-20 FG, 4-9 3Pt, 8-8 FT) while adding eight assists, three rebounds and two steals in 35 minutes during Wednesday's 122-114 win over the Celtics.", "Young supplied 23 points (6-19 FG, 1-4 3Pt, 10-12 FT), eight assists, three rebounds and a steal across 40 minutes in Monday's loss against the Knicks.", "Young logged 15 points (3-9 FG, 9-11 FT), 14 assists and one rebound in Saturday's 125-113 loss to the Pacers."]]
}
