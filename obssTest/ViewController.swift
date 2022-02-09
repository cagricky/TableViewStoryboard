//
//  ViewController.swift
//  obssTest
//
//  Created by Çağrı  İnal  on 9.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var network = Network()
    var earthquake: Earthquake?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeRequest()
    }
    
    func makeRequest() {
        network.fetchData { data in
            self.earthquake = data
            print(self.earthquake ?? "no-data")
            self.tableView.reloadData()
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return earthquake?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EarthquakeCell") as? EarthquakeCell else { return UITableViewCell() }
        
        cell.latitudeLabel.text = "Latitude: \(earthquake?.results?[indexPath.row].latitude ?? 0.0)"
        cell.longitudeLabel.text = "Longitude: \(earthquake?.results?[indexPath.row].longitude ?? 0.0)"
        cell.humanReadableLocationLabel.text = "Human Readable Loc: " + (earthquake?.results?[indexPath.row].humanReadableLocation ?? "")
        
        return cell
    }
    
    
}
