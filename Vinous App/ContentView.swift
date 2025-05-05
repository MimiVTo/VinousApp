//
//  ContentView.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI

struct dataBase{
    var user: String
    var password: String
}

struct ContentView: View {
    @State var users: [dataBase] = [
        dataBase(user: "Dimitri.S", password: "OMW.Fifth")
    ]
    @State var username: String = ""
    @State var pass: String = ""
    @State private var passedTest: Bool = false
    
    var body: some View {
        //Login Page
        NavigationView{
            ZStack{
                startingViews()
                VStack{
                    VStack{
                        Spacer()
                        Text("Welcome to\nVinousZone")
                            .font(.largeTitle)
                            .frame(width:250, height:100)
                            .foregroundColor(.white)
                            .background(Color(hex:"#720124"))
                            .cornerRadius(20)
                            .padding()
                        
                        TextField("Username", text: $username)
                            .padding()
                            .frame(width: 300)
                            .background()
                            .cornerRadius(30)
                            .padding()
                        
                        TextField("Password", text: $pass)
                            .padding()
                            .frame(width: 300)
                            .background()
                            .cornerRadius(30)
                            .padding()
                        
                        Button(action:{
                            checkUsers()
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
                        NavigationLink(destination: HomePage(), isActive: $passedTest) {
                            EmptyView()
                        }
                        Spacer()
                        
                    }
                    VStack{
                        NavigationLink(destination:{
                            AccountCreationPage()
                        }){
                            Text("Account Creation")
                                .frame(width: 500, height: 70)
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
    func checkUsers(){
        for i in users.indices{
            if username == users[i].user && pass == users[i].password{
                passedTest = true
            }
        }
    }
}

#Preview {
    ContentView()
}
