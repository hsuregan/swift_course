//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by Regan Hsu on 7/16/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contacts:[Contact]! = []
    
    func toggleEdit() {
        tableView.setEditing(!tableView.editing, animated: true)
    }
    
    func addContact() {
        let contact:Contact = Contact(name: "New Contact", phoneNumber: "")
        self.contacts.append(contact)
        let newIndexPath = NSIndexPath(forRow: self.contacts.count - 1, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Automatic)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let regan:Contact = Contact(name: "Regan", phoneNumber: "512-517-6805")
        let christine:Contact = Contact(name: "Christine", phoneNumber: "512-968-9053")
        let mom:Contact = Contact(name: "Mary", phoneNumber: "512-845-7404")
        self.contacts.extend([regan, christine, mom])
        
        let moveButton = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: Selector("toggleEdit"))
        navigationItem.leftBarButtonItem = moveButton
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: Selector("addContact"))
        navigationItem.rightBarButtonItem = addButton
        
        
        


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return contacts.count
    }

    
    //lazy loading way cellForRowAtIndexPath
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        //configure a cell, instantiate cells, if you wanna set the color, basically anything to do with how the cell looks
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        let contact = self.contacts[indexPath.row]
        // Configure the cell...
        
//        cell.textLabel?.text = contact.name
//        NSLog(contact.name!)
        
        if let name = contact.name {
            cell.textLabel?.text = name
        } else {
            cell.textLabel?.text = "no name"
        }
        
        //cell.textLabel?.text = self.contacts[indexPath.row].name

        return cell
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "openContact") {
            //destViewController returns an AnyObject
            //let newViewController = segue.destinationViewController as! ViewController //casting
            //newViewController.contact = self.contacts[tableView.indexPathForSelectedRow()!.row]
            //NSLog("loading contact")
            //newViewController.phoneNumber = self.contacts[tableView.indexPathForSelectedRow()!.row].phoneNumber
                //sender!.name
            //newViewController.name = self.contacts[tableView.indexPathForSelectedRow()!.row].name
            
            
            let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)!
            let contact = self.contacts[indexPath.row]
            var destination = segue.destinationViewController as! ViewController
            destination.contact = contact
            
        }
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    
    
    

    //UITableViewCellEditingStyle .Delete
    // Override to support editing the table view.
    //whats going on over here?
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.contacts.removeAtIndex(indexPath.row)
            // Delete the row from the data source
            //why are there brackets?
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        let contactMoving = contacts.removeAtIndex(fromIndexPath.row)
        contacts.insert(contactMoving, atIndex: toIndexPath.row)
    }
    
    //makes the delete button go away when in editing mode s
    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if tableView.editing {
            return .None
        } else {
            return .Delete
        }
    }
    
    override func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(animated: Bool) {
        NSLog("ugh")
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

}
