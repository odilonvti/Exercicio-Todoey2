//
//  ViewController.swift
//  Exercicio-Todoey2
//
//  Created by Odilon Pereira on 8/27/18.
//  Copyright © 2018 odilon. All rights reserved.
//

import UIKit

class TarefaViewController: UITableViewController {
    
    let tarefasDiarias = ["estudar muito", "ir ao mercado", "comprar pão", "comprar açucar"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefasDiarias.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tarefasDiarias", for: indexPath)
        
        cell.textLabel?.text = tarefasDiarias[indexPath.row]
        
        return cell
        
    }
    
    // MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(tarefasDiarias[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

