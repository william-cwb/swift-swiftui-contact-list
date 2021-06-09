//
//  ContactDetail.swift
//  ContactList
//
//  Created by William David on 08/06/21.
//

import SwiftUI

struct ContactDetail: View {
    
    let contact: Contact
    
    var body: some View {
        VStack{
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            
            Text(contact.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.medium)
            Form{
                Section{
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text(contact.phone)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text(contact.email)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Address")
                        Spacer()
                        Text(contact.address)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 180)
                    }
                }
                Section{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Send message")
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Call")
                    })
                }
            }
        }.padding(.top, 40)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: contacts[0])
    }
}
