//
//  ContentView.swift
//  ContactList
//
//  Created by William David on 08/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(contacts){ contact in
                NavigationLink(destination: ContactDetail(contact: contact)){
                    ContactItem(contact: contact)
                }
                
            }
            .navigationBarTitle("My Contacts", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.top, 60)
    }
}

struct ContactItem: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading){
                Text(contact.name)
                    .font(.system(size: 21, weight: .bold, design: .default))
                Text(contact.phone)
            }
        }
    }
}
