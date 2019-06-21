//
//  TaskDetailTableViewController.swift
//  Task27
//
//  Created by Austin West on 6/19/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {

    var task: Task? {
        didSet {
            updateViews()
        }
    }
    
    var dueDateValue: Date?
    
    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var taskDueTextField: UITextField!
    @IBOutlet weak var taskNotesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateViews()'
    }

    
    @IBAction func saveButtonTapped(_ sender: Any) {
        updateTask()
        let _ = navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        let _ = navigationController?.popViewController(animated: true)
    }
    
    private func updateTask() {
        
        guard let name = taskNameTextField.text else { return }
        let due = dueDateValue
        let notes = taskNotesTextView.text
        
        if let task = self.task {
            TaskController.shared.update(task: task, name: name, notes: notes, due: due)
        }
    }
    
    
   private func updateViews() {
    guard let task = task, isViewLoaded else { return }
    
    title = task.name
    taskNameTextField.text = task.name
    taskDueTextField.text = (task.due as Date?)?.stringValue()
    taskNotesTextView.text = task.notes
    }
    

}
