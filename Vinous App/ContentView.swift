//
//  ContentView.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI


//STRUCTS TO HELP WITH THE PROGESS ------------------------
struct dataBase{
    var name: String
    var user: String
    var password: String
}

struct loggedUser{
    var name: String
    var user: String
    var tier: String
    var password: String
    var following: Int
    var followers: Int
    var bio: String
}

struct ContentView: View {
    //variables -----------------------------------------------
    @State var users: [dataBase] = [
        dataBase(name: "Placeholder", user: "Placer.Holder", password: "Password")
    ]
    @State var userLoggedAs: [loggedUser] = [
        loggedUser(name: "Placeholder", user: "Placer.Holder", tier: "Newcomer", password: "Password", following: 0, followers: 0, bio: "")
    ]
    @State var username: String = ""
    @State var pass: String = ""
    @State private var passedTest: Bool = false
    @State var realAcc: Bool = false
    //Count for which user is logged in
    @State var whichUser: Int = 0
    
    var body: some View {
        //Login Page
        NavigationView{
            ZStack{
                //Background
                startingViews()
                VStack{
                    VStack{
                        Spacer()
                        //Title
                        Text("Welcome to\nVinousZone")
                            .font(.largeTitle)
                            .frame(width:250, height:100)
                            .fontDesign(.monospaced)
                            .foregroundColor(.white)
                            .background(Color(hex:"#720124"))
                            .cornerRadius(20)
                            .padding()
                        // -----------------------------
                        
                        TextField("Username or Email", text: $username)
                            .padding()
                            .frame(width: 300)
                            .background()
                            .cornerRadius(30)
                            .padding()
                        // USERNAME OR EMAIL
                        TextField("Password", text: $pass)
                            .padding()
                            .frame(width: 300)
                            .background()
                            .cornerRadius(30)
                            .padding()
                        // PASSWORD
                        
                        // -----------------------------
                        Button(action:{
                            checkUsers()
                            //function to check if thats a valid user
                        }){
                            Text("❤︎")
                                .padding()
                                .font(.title)
                                .frame(width: 100)
                                .foregroundColor(.white)
                                .background(Color(hex:"#720124"))
                                .cornerRadius(30)
                                .padding()
                        }
                        //Dumb alert for if they arent a valid user LOL
                        .alert(isPresented: $realAcc){
                            Alert(
                                title: Text("Lock in!"),
                                message: Text("Please login with valid information.")
                            )
                        }
                        NavigationLink(destination: TabPage(userPage: $userLoggedAs, whichUser: $whichUser).navigationBarBackButtonHidden(), isActive: $passedTest) {
                            EmptyView()
                        }
                        Spacer()
                        
                    }
                    //Navigation link to create an account
                    VStack{
                        NavigationLink(destination:{
                            //takes them to the account creation page
                            AccountCreationPage(users: $users)
//                                .navigationBarBackButtonHidden()
                        }){
                            Text("Account Creation")
                                .frame(width: 500, height: 70)
                                .font(.title2)
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#720124"))
                                .cornerRadius(30)
                                .padding(37)
                        }
                    }
                }
            }
        }
    }
    //function to check
    func checkUsers(){
        print(users.count)
        //for loop
        for i in users.indices{
            //checks if its an actual user
            realAcc = false
            if username == users[i].user && pass == users[i].password{
                //Make it look cool fr
                let accountLoggedInAs = loggedUser(name: users[i].name, user: users[i].user, tier: "Newcomer", password: users[i].password, following: 0, followers: 0, bio: "")
                whichUser += 1
                userLoggedAs.append(accountLoggedInAs)
                passedTest = true
                print(users[i])
            }
            else{
                realAcc = true
                //makes the alert go off
            }
        }
    }
}

#Preview {
    ContentView()
}
