//
//  FindAccounts.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI


struct FindAccounts: View {

    
    //binded variable
    @Binding var following: [loggedUser]
    @Binding var whichUser: Int
    @Binding var accountsToFind: [accountsToFollow]
    
    var body: some View {
        NavigationView{
//            ScrollView{
            ZStack{
                //background ----------------------
                AccountViews()
                VStack{
                    //title of the page
                    Text("Accounts to Follow")
                        .padding()
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .font(.title)
                        .padding()
                    //for loop to show what accounts are able to be followed
                    ForEach(accountsToFind.indices, id: \.self){i in
                        VStack{
                            if accountsToFind[i].followedAlready == false{
                                NavigationLink(destination:{
                                    AccountToFollowPage(account: $accountsToFind[i], followingPerson: $following, whichUser: $whichUser)
                                        .navigationBarBackButtonHidden()
                                }){
                                    Text(accountsToFind[i].user)
                                        .padding()
                                        .frame(width: 300, height: 50)
                                        .fontDesign(.monospaced)
                                        .foregroundColor(.white)
                                        .background(Color(hex:"#b86d71"))
                                        .cornerRadius(20)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
//            }
//            .background(Color(hex:"#b7a798"))
        }
    }
}

#Preview {
    FindAccounts(following: .constant([]), whichUser: .constant(0), accountsToFind: .constant([]))
}
