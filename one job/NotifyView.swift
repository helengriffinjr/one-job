//
//  NotifyView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI

import UserNotifications

func scheduleTimeBasedNotifications() { // 1. Request Permission To Display Alerts And Sounds.
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound] )
    {granted, error in if granted {
        print("Permission Gtanted")
    } else if let error = error {
        print (error.localizedDescription)
    }
        //2. Create The Content For The Notification
        let content = UNMutableNotificationContent()
        
        content.title = "Reminder"
        content.body = "You Need To Succeed Get To It"
        content.sound = UNNotificationSound.default
        
        //3. Set Up A Trigger For The Notification
        //For Example, 10 Seconds From Now
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        //4. Create The Request
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        //5. Add The Request To The Notification Center
        
        UNUserNotificationCenter.current().add(request)
//        { error in
////            if let error = error {
//            print ("Schedule Notification")
////        }
//
//        }
//        else {
//            print("Schedule Notification Failed")
//
//    }
}
}

struct NotifyView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "clock")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Ladon!")
        }
        .onAppear {
            scheduleTimeBasedNotifications()
        }
        .padding()
    }
}

#Preview {
    NotifyView()
}
