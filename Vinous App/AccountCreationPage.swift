//
//  AccountCreationPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI

struct AccountCreationPage: View {
    @Binding var users: [dataBase]
    @State var personalName: String = ""
    @State var userName: String = ""
    @State var chosenPassword: String = ""
    @State var inUse: Bool = false
    @State var created: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                //BACK GROUND --------------------------------------
                startingViews()
                VStack{
                    //TITLE OF THE PAGE
                    Text("CREATE ACCOUNT")
                        .font(.largeTitle)
                        .fontDesign(.monospaced)
                        .frame(width:320, height:95)
                        .foregroundColor(.white)
                        .background(Color(hex:"#720124"))
                        .cornerRadius(20)
                        .padding()
                    //PERSON'S NAME
                    TextField("Name", text: $personalName)
                        .padding()
                        .frame(width: 300)
                        .background()
                        .cornerRadius(30)
                        .padding()
                    //USERNAME
                    TextField("Username", text: $userName)
                        .padding()
                        .frame(width: 300)
                        .background()
                        .cornerRadius(30)
                        .padding()
                    //PASSWORD CHOSEN
                    TextField("Password", text: $chosenPassword)
                        .padding()
                        .frame(width: 300)
                        .background()
                        .cornerRadius(30)
                        .padding()
                    //BUTTON TO IMPLEMENT IT
                    Button(action:{
                        //FUNCTION
                        makeAccount()
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
                    //Alert if its already a taken user
                    .alert(isPresented: $inUse){
                        Alert(
                            title: Text("Username Already in Use!"),
                            message: Text("Please choose another username.")
                        )
                    }
//                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), isActive: $created){
//                        EmptyView()
//                    }
                }
            }
        }
    }
    
    func makeAccount(){
        //for loop
        for i in users.indices{
            //checks if the username is already in use
            if userName == users[i].user{
                inUse = true
            }
            else{
                //if its not taken then append the information into the database
                let newAccount = dataBase(name: personalName, user: userName, password: chosenPassword)
                users.append(newAccount)
                created = true
                print(newAccount)
            }
        }
    }
}

#Preview {
    AccountCreationPage(users: .constant([]))
}
