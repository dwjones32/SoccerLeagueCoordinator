// Dustin Jones
// 3/22/17
// Project 1 SoccerLeagueCoordinatorinSwift
// 5 Steps
/* Manually create a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String Keys and the corresponding values
 */

let joeSmith: [String: Any] = ["Name": "Joe Smith", "Height": 42, "Experience": true, "Guardian": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "Experience": true, "Guardian": "Clara Tanner"]
let billBon: [String: Any] = ["Name": "Bill Bon", "Height": 43, "Experience": true, "Guardian": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["Name": "Eva Gordon", "Height": 45, "Experience": false, "Guardian": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["Name": "Matt Gill", "Height": 40, "Experience": false, "Guardian": "Charles and Sylvia Gill"]
let kimmyStein: [String: Any] = ["Name": "Kimmy Stein", "Height": 41, "Experience": false, "Guardian": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["Name": "Sammy Adams", "Height": 45, "Experience": false, "Guardian": "Jeff Adams"]
let karlSaygan: [String: Any] = ["Name": "Karl Saygan", "Height": 42, "Experience": true, "Guardian": "Heather Bledsoe"]
let suzaneGreenberg: [String: Any] = ["Name": "Suzane Greenberg", "Height": 44, "Experience": true, "Guardian": "Henrietta Dumas"]
let salDali: [String: Any] = ["Name": "Sal Dali", "Height": 41, "Experience": false, "Guardian": "Gala Dali"]
let joeKavalier: [String: Any] = ["Name": "Joe Kavalier", "Height": 39, "Experience": false, "Guardian": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["Name": "Ben Finkelstein", "Height": 44, "Experience": false, "Guardian": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["Name": "Diego Soto", "Height": 41, "Experience": true, "Guardian": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["Name": "Chloe Alaska", "Height": 47, "Experience": false, "Guardian": "David and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["Name": "Arnold Willis", "Height": 43, "Experience": false, "Guardian": "Claire Willis"]
let phillipHelm: [String: Any] = ["Name": "Phillip Helm", "Height": 44, "Experience": true, "Guardian": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["Name": "Les Clay", "Height": 42, "Experience": true, "Guardian": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["Name": "Herschel Krustofski", "Height": 45, "Experience": true, "Guardian": "Hyman and Rachel Krustofski"]

let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

/* Create appropriate variables and logic to sort and store players into three teams: Sharks, Dragons, and Raptors. Store the players for each team in collection variables names 'teamSharks', 'teamDragons', and 'teamRaptors'. Be sure that your logic results in all teams having the same number of experienced players on each.
 */
// 3 Experienced and 3 non-Experienced players on each team (3 teams of 6)

/* Extra Credit Logic.....Logic to ensure that each team's average height is within 1.5 inches of the others as well as having each team contain the same number of experienced players. your logic should make use of dynamic values like the average height of teames or players and not be based on any magic numbers or hard-coded values. You should not rely on a particular ordering of the initial collection of players - the logic should work regardless of the order of players in the initial collection. (Please note, this feature only needs to meet the 1.5 inch threshold for the given set of players we provided, not for all potential future sets of players.) Please also print out the average height of the players of each team.
 */

// Sorting Experienced and Inexperienced Players via Arrays

var experiencedPlayers: [[String: Any]] = []
var unexperiencedPlayers: [[String: Any]] = []

for player in players {
    if player ["Experience"] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        unexperiencedPlayers.append(player)
    }
}

// Teams

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

// Use logic to result in all teams having the same number of experienced players on each.

for i in 0..<experiencedPlayers.count {
    let players = experiencedPlayers [i]
    let mod = i % 3
    if mod == 0 {
        teamSharks.append(players)
    }
    else if mod == 1 {
        teamDragons.append(players)
    }
    else {
        teamRaptors.append(players)
    }
}

// Use logic to result in all teams having the same number of unexperienced players on each.
// Seperate them in backwards order to mitigate the possiblity of uneven number of players.

for i in 0..<unexperiencedPlayers.count {
    let players = unexperiencedPlayers[i]
    let mod = i % 3
    if mod == 0 {
        teamRaptors.append(players)
    }
    else if mod == 1 {
        teamDragons.append(players)
    }
    else {
        teamSharks.append(players)
    }
}

/* Provide logic that prints a personalized letter to the guardians specifying: the player's name, guardian names, team name, and date/time of their first team proctive. The values for each should exactly match what we have provided, including the team practice dates and times above. The letters must be stored in a collection variable named 'letters'. When the code is run, the letters should be printed in the console.
 */

// Print teamSharks letters

for players in teamSharks {
    print("Exciting news \(players["Guardian"]!), your child, \(players["Name"]!), has been chosen to play on team Sharks. The first practice for the Sharks will be held on March 17th at 3 pm. See you then!")
}

// Print teamDragon letters

for players in teamDragons {
    print("Exciting news \(players["Guardian"]!), your child, \(players["Name"]!), has been chosen to play on team Dragons. The first practice for the Dragons will be held on March 17th at 1 pm. See you then!")
}

// Print teamRaptors letters

for players in teamRaptors {
    print("Exciting news \(players["Guardian"]!), your child, \(players["Name"]!), has been chosen to play on team Raptors. The first practice for the Raptors will be held on March 18th at 1 pm. See you then!")
}





