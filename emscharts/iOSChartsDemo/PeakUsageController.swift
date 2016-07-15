import UIKit
import Material
import Charts

class PeakUsageController: UIViewController {
    
    var months: [String]!
    var barchartview: BarChartView!
    private var containerView: UIView!
    private var toolbar: Toolbar!
    
    
    var horizBarchartView: HorizontalBarChartView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        prepareTabBarItem()
        prepareContainerView()
        prepareToolbar()
        createChart()
        
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        
        setChart(months, values: unitsSold)
        setHorizChart(months, values: unitsSold)
        
    }
    
    /// General preparation statements.
    private func prepareView() {
        view.backgroundColor = MaterialColor.white
    }
    
    /// Prepare tabBarItem.
    private func prepareTabBarItem() {
        tabBarItem.title = "Video"
        tabBarItem.image = MaterialIcon.cm.videocam
        tabBarItem.setTitleColor(MaterialColor.grey.base, forState: .Normal)
        tabBarItem.setTitleColor(MaterialColor.teal.base, forState: .Selected)
    }
    
    
    private func createChart(){
        barchartview = BarChartView(frame: CGRect(x: 0, y: 50, width: 350, height: 350))
        barchartview.backgroundColor = MaterialColor.white
        horizBarchartView = HorizontalBarChartView(frame: CGRect(x: 0, y: 400, width: 350, height: 350))
        horizBarchartView.backgroundColor = MaterialColor.white
        view.addSubview(barchartview)
        view.addSubview(horizBarchartView)
    }
    
    
    func setChart(dataPoints: [String], values: [Double]) {
        barchartview.noDataText = "You need to provide data for the chart."
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = BarChartData(xVals: months, dataSet: chartDataSet)
        barchartview.data = chartData
    }
    
    func setHorizChart(dataPoints: [String], values: [Double]) {
        horizBarchartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = BarChartData(xVals: months, dataSet: chartDataSet)
        horizBarchartView.data = chartData
    }
    
    
    /// Prepares the containerView.
    private func prepareContainerView() {
        containerView = UIView()
        view.layout(containerView).edges(top: 0, left: 0, right: 0)
    }
    
    /// Prepares the toolbar
    private func prepareToolbar() {
        toolbar = Toolbar()
        containerView.addSubview(toolbar)
        
        // Title label.
        toolbar.title = "GE Digital"
        toolbar.titleLabel.textColor = MaterialColor.white
        
        // Detail label.
        toolbar.detail = "EMS Dashboard"
        toolbar.detailLabel.textColor = MaterialColor.white
        
        var image: UIImage? = MaterialIcon.cm.menu
        
        // Menu button.
        let menuButton: IconButton = IconButton()
        menuButton.pulseColor = MaterialColor.white
        menuButton.tintColor = MaterialColor.white
        menuButton.setImage(image, forState: .Normal)
        menuButton.setImage(image, forState: .Highlighted)
  
        toolbar.backgroundColor = MaterialColor.blue.base
        toolbar.leftControls = [menuButton]
    }

  
    
    
}


