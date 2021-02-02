//
//  SettingView.swift
//  Fruits
//
//  Created by GeoSpark Mac 15 on 01/02/21.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding")var isOnboarding:Bool = false

    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20){
                    // MARK: Section 1
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat , sodium and calories. None have cholestrol. Fruits are sources of many essential mutirents inlcuding potassium and much more")
                                .font(.footnote)
                            
                        }
                    }
                    
                    // MARK: Section 2
                    GroupBox(
                        label:SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the applicaton by toggle the switch in this box. That way it start the onboarding process and you will see the welcome screen again")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                                
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)

                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }
                    
                    // MARK: Section 3
                    GroupBox(
                        label:SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingRowView(name: "Developer", content: "Ravikanth")
                        SettingRowView(name: "Designer", content: "Ravikanth")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI Master", linkDestination: "google.com")
                        SettingRowView(name: "Twitter", linkLabel: "ravikanth", linkDestination: "twitter.com/ravikanth1974")
                        SettingRowView(name: "SwiftUI",content: "2.0")
                        SettingRowView(name: "Version",content: "2.0.0")
                    }
                }
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                )
                .padding()
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
