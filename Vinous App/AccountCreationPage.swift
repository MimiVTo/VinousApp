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
                startingViews()
                VStack{
                    Text("CREATE ACCOUNT")
                        .font(.largeTitle)
                        .fontDesign(.monospaced)
                        .frame(width:320, height:95)
                        .foregroundColor(.white)
                        .background(Color(hex:"#720124"))
                        .cornerRadius(20)
                        .padding()
                    
                    TextField("Name", text: $personalName)
                        .padding()
                        .frame(width: 300)
                        .background()
                        .cornerRadius(30)
                        .padding()
                    
                    TextField("Username", text: $userName)
                        .padding()
                        .frame(width: 300)
                        .background()
                        .cornerRadius(30)
                        .padding()
                    
                    TextField("Password", text: $chosenPassword)
                        .padding()
                        .frame(width: 300)
                        .background()
                        .cornerRadius(30)
                        .padding()
                    
                    Button(action:{
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
        for i in users.indices{
            if userName == users[i].user{
                inUse = true
            }
            else{
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
