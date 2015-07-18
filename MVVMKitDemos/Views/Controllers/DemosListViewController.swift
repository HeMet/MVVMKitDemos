//
//  ViewController.swift
//  MVVMKitDemos
//
//  Created by Евгений Губин on 18.07.15.
//  Copyright (c) 2015 GitHub. All rights reserved.
//

import UIKit
import MVVMKit

class DemosListViewController: UITableViewController, SBViewForViewModel {
    static let sbInfo = (sbID: "Main", viewID: "DemosListViewController")
    
    var viewModel: DemosListViewModel!
    
    func bindToViewModel() {
        // nothing
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindToViewModel()
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath path: NSIndexPath) {
        
        if let cell = tableView.cellForRowAtIndexPath(path), let demo = Demos(rawValue: cell.tag) {
            viewModel.showDemo(demo)
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier! {
        case "SegueIntegrationSegue":
            // How to migrate from Storyboard segue to MVVM navigation:
            // 1. Make the Segue manual to avoid double triggering
            // 2. Add performSegueWithIdentifier method call where it's needed
            // 3. Check
            // 4. Add view models for view controllers under migration
            // 5. Make source and destination view controllers ViewForViewModel
            // 6. Describe transition between view controllers using Segue Identifier (see GoTo.swift)
            // 7. Add method that triggers the transition to Source View Model
            // 8. Replace code from step 2 with call to View Model (see step 7)
            // 9. Add binding code as below
            // 10. Check
            // 11. Migrate Source View Controller to MVVM
            // 12. Check
            // 13. Migrate Detination View Controller to MVVM
            // 14. Eliminate plain setup code
            // 15. Check
            // 16. Replace transtition by Segue with transition of other type.
            // 17. Remove Segue from Storyboard and case in this switch
            // 18. Good job :)
            
            // Plain setup code here...
            
            // View model binding
            let stubVC = segue.destinationViewController as! StubViewController
            let vms = sender as! [AnyObject]
            stubVC.viewModel = vms[0] as! StubViewModel
        default:
            break
        }
    }
}

