//
//  AccountSettingsPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct AccountSettingsPage: View {
    @Binding var userLogged: [loggedUser]
    @Binding var following: Int
    @Binding var followers: Int
    @Binding var bio: String
    
    @State var userChangedTo: String = ""
    @State var nameChangedTo: String = ""
    @State var bioChangedTo: String = ""
    
    var body: some View {
        ZStack{
            AccountViews()
            VStack{

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
                
                TextField("Change User", text: $userChangedTo)
                    .padding()
                    .frame(width: 300)
                    .background()
                    .cornerRadius(30)
                    .padding()
                
                TextField("Change Name", text: $nameChangedTo)
                    .padding()
                    .frame(width: 300)
                    .background()
                    .cornerRadius(30)
                    .padding()
                
                TextField("Change Bio", text: $bioChangedTo)
                    .padding()
                    .frame(width: 300)
                    .background()
                    .cornerRadius(30)
                    .padding()
                Spacer()
                
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
        if userChangedTo == ""{
            return
        }
        else{
            userLogged[0].user = userChangedTo
        }
        if nameChangedTo == ""{
            return
        }
        else{
            userLogged[0].name = nameChangedTo
        }
        if bioChangedTo == ""{
            return
        }
        else{
            bio = bioChangedTo
        }
    }
}

#Preview {
    AccountSettingsPage(userLogged: .constant([]), following: .constant(0), followers: .constant(0), bio: .constant(""))
}
