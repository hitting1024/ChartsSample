//
//  PieChartViewController.swift
//  ChartsSample
//
//  Created by hitting on 2018/06/03.
//  Copyright © 2018年 Hit Apps. All rights reserved.
//

import UIKit

import Charts

class PieChartViewController: UIViewController {
    
    @IBOutlet weak var pieChartView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let entries = [
            PieChartDataEntry(value: 10, label: "A"),
            PieChartDataEntry(value: 30, label: "B"),
            PieChartDataEntry(value: 60, label: "C"),
        ]
        let dataSet = PieChartDataSet(values: entries, label: "Data")
        dataSet.setColors(.green, .blue, .red)
        
        self.pieChartView.data = PieChartData(dataSet: dataSet)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
