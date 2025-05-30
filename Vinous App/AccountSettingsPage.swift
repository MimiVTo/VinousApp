//
//  AccountSettingsPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct AccountSettingsPage: View {
    //Linked / Binding variables
    @Binding var userLogged: [loggedUser]
    @Binding var whichUser: Int
    
    //Stated variables
    @State var userChangedTo: String = ""
    @State var nameChangedTo: String = ""
    @State var bioChangedTo: String = ""
    
    var body: some View {
        ZStack{
            //background
            AccountViews()
            VStack{
                //title of the page
                Text("Account Settings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .fontDesign(.monospaced)
                    .frame(width:600, height:80)
                    .fontDesign(.monospaced)
                    .foregroundColor(Color(hex:"#ba5a53"))
                    .background(Color(hex:"#fdf3f2"))
                    .cornerRadius(20)
                    .padding()
                Spacer()
                //able to change the username
                TextField("Change User", text: $userChangedTo)
                    .padding()
                    .frame(width: 300)
                    .background()
                    .cornerRadius(30)
                    .padding()
                //able to change the name
                TextField("Change Name", text: $nameChangedTo)
                    .padding()
                    .frame(width: 300)
                    .background()
                    .cornerRadius(30)
                    .padding()
                //able to change the bio
                TextField("Change Bio", text: $bioChangedTo)
                    .padding()
                    .frame(width: 300)
                    .background()
                    .cornerRadius(30)
                    .padding()
                Spacer()
                //Saving whatever you changed
                Button(action:{
                    changeItems()
                }){
                    Text("Save")
                        .padding()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontDesign(.monospaced)
                        .foregroundColor(.white)
                        .background(Color(hex:"#ba5a53"))
                        .cornerRadius(20)
                }
                Spacer()
            }
        }
    }
    func changeItems(){
        //If these items are empty then don't change it
        if userChangedTo == ""{
            return
        }
        else{
            userLogged[whichUser].user = userChangedTo
        }
        if nameChangedTo == ""{
            return
        }
        else{
            userLogged[whichUser].name = nameChangedTo
        }
        if bioChangedTo == ""{
            return
        }
        else{
            userLogged[whichUser].bio = bioChangedTo
        }
        //if they aren't empty then set it to whatever the user typed in
    }
}

#Preview {
    AccountSettingsPage(userLogged: .constant([]), whichUser: .constant(0))
}
