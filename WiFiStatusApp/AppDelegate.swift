//
//  AppDelegate.swift
//  WiFiStatusApp
//
//  Created by nivek on 05/01/16.
//  Copyright © 2016 no-one. All rights reserved.
//

import Cocoa
import Foundation

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var toggleLevel: NSMenuItem!
    
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)


    @IBOutlet weak var Status: NSString!
    @IBOutlet weak var Network: NSString!
    @IBOutlet weak var Level: NSString! = "0"
    var showLevel: Int!
    
    @IBOutlet weak var showStatus: NSMenuItem!
    @IBOutlet weak var Configure: NSMenuItem!

    @IBOutlet weak var timer : NSTimer!
    var index : Int = 0
    
    @IBAction func ConfigureClicked(sender: NSMenuItem) {
        let task = NSTask()
        task.launchPath = "/usr/bin/osascript"
        task.arguments = [NSBundle.mainBundle().pathForResource("WiFi_conf", ofType: "scpt")!]
        //task.arguments = ["/Users/angelo/.wifi/WiFi_conf.scpt"]
        task.launch()
        }
    
    @IBAction func quitClicked(sender: NSMenuItem) {
        NSApplication.sharedApplication().terminate(self)
    }

    @IBAction func showStatusClicked(sender: AnyObject) {
    }
    
    @IBAction func toggleLevel(sender: NSMenuItem) {
        if (showLevel == 1) {
            showLevel=0
            toggleLevel.title = "Show Signal Level"
        } else {
            showLevel=1
            toggleLevel.title = "Hide Signal Level"
        }
        //Update()
    }

    func Update() {
        let task = NSTask()
        task.launchPath = "/usr/bin/osascript"
        task.arguments = [NSBundle.mainBundle().pathForResource("WiFi_status", ofType: "scpt")!]
        let pipe = NSPipe()
        task.standardOutput = pipe
        
        task.launch()
        task.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = NSString (data: data, encoding: NSUTF8StringEncoding)
        
        let fullNameArr = output!.componentsSeparatedByString(", ")
        
        Status = fullNameArr[0]
        
        switch Status {
        case "No Adapter":
            let icon = NSImage(named: "wifioff")
            icon?.template = true // best for dark mode
            icon?.size = NSSize(width:24, height:24)
            statusItem.image = icon
            statusItem.title = ""
            showStatus.title = Status as String
        case "Disconnected":
            let icon = NSImage(named: "level0")
            icon?.template = true // best for dark mode
            icon?.size = NSSize(width:24, height:24)
            statusItem.image = icon
            statusItem.title = ""
             showStatus.title = Status as String
        case "Connected":
            Network = fullNameArr[1]
            Level = fullNameArr[2].substringToIndex(fullNameArr[2].endIndex.predecessor().predecessor())
            let index = Int ( ceil ( Double(Level.intValue) / 12.5 ) )
            //print (Level)
            //print (index)
            let iconName =  "level" + String(index)
            //print (iconName)
            showStatus.title = Network as String
            let icon = NSImage(named: iconName)
            icon?.template = true // best for dark mode
            icon?.size = NSSize(width:24, height:24)
            statusItem.image = icon
            if ( showLevel == 1 ) {
                statusItem.length = 68
                statusItem.title = (Level as String) + "%"
            } else {
                statusItem.length = 32
                statusItem.title = ""
            }
        default:
            let icon = NSImage(named: "gear")
            icon?.template = true // best for dark mode
            icon?.size = NSSize(width:24, height:24)
            statusItem.image = icon
            statusItem.title = ""
            showStatus.title = "Network Utility in use"
        }
    }

    func TestUpdate() {
        if (index > 8) {
            index = 0
        } else {
            index = index + 1
        }
        let task = NSTask()
        task.launchPath = "/usr/bin/osascript"
        task.arguments = [NSBundle.mainBundle().pathForResource("WiFi_status", ofType: "scpt")!]
        let pipe = NSPipe()
        task.standardOutput = pipe
        
        task.launch()
        task.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = NSString (data: data, encoding: NSUTF8StringEncoding)
        
        let fullNameArr = output!.componentsSeparatedByString(", ")
        
        Status = fullNameArr[0]
        
        switch Status {
        case "No Adapter":
            let icon = NSImage(named: "wifioff")
            icon?.template = true // best for dark mode
            statusItem.image = icon
            statusItem.title = ""
            showStatus.title = Status as String
        case "Disconnected":
            let icon = NSImage(named: "level0")
            icon?.template = true // best for dark mode
            statusItem.image = icon
            statusItem.title = ""
            showStatus.title = Status as String
        case "Connected":
            Network = fullNameArr[1]
            Level = fullNameArr[2].substringToIndex(fullNameArr[2].endIndex.predecessor().predecessor())
            //let index = Int( Double(Level.intValue) / 12.5 )
            //print (Level)
            //print (index)
            let iconName =  "level" + String(index)
            //print (iconName)
            showStatus.title = Network as String
            let icon = NSImage(named: iconName)
            icon?.template = true // best for dark mode
            statusItem.image = icon
            if ( showLevel == 1 ) {
                statusItem.title = String(index) + "%"
            } else {
                statusItem.title = ""
            }
        default:
            statusItem.image = NSImage(named: "gear")
            statusItem.title = ""
            showStatus.title = "Network Utility in use"
        }
    }
    func applicationDidFinishLaunching(aNotification: NSNotification) {
           // Insert code here to initialize your application
        
        let task = NSTask()
        task.launchPath = "/usr/bin/osascript"
        task.arguments = [NSBundle.mainBundle().pathForResource("check_assistive", ofType: "scpt")!]
        let pipe = NSPipe()
        task.standardOutput = pipe
        
        task.launch()
        task.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = NSString (data: data, encoding: NSUTF8StringEncoding)
        
        //print (output)
        if ((output as! String) == "not_enabled" ) {
          NSApplication.sharedApplication().terminate(self)
        }
        showLevel = 0
        toggleLevel.title = "Show Signal Level"
        statusItem.title = ""
        showStatus.title = " . . ."
        Update()
        //showStatus.enabled = false
     }
 
    
      override func awakeFromNib() {
        let icon = NSImage(named: "gear")
        icon?.template = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
        
        // periodic task (neverending loop)
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector:"Update", userInfo:nil, repeats:true)
          }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}



