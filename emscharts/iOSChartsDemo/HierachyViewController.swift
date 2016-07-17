import UIKit
import Material

class HierarchyViewController: UIViewController {
    /// A list of all the data source items.
    private var dataSourceItems: Array<MaterialDataSourceItem>!
    
    /// A collectionView used to display entries.
    private var collectionView: MaterialCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        prepareItems()
        prepareCollectionView()
    }
    
    /// Prepares the items Array.
    private func prepareItems() {
        dataSourceItems = [
            MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 80
            ),
            MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 80
            ),
            MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 80
            )
        ]
    }
    
    /// Prepares view.
    private func prepareView() {
        view.backgroundColor = MaterialColor.red.base
    }
    
    /// Prepares the collectionView.
    private func prepareCollectionView() {
        collectionView = MaterialCollectionView(frame: view.bounds)
        collectionView.registerClass(MaterialCollectionViewCell.self, forCellWithReuseIdentifier: "MaterialCollectionViewCell")
        collectionView.dataSource = self
        collectionView.contentInset.top = 30
        collectionView.spacing = 5
        
        view.layout(collectionView).edges()
    }
}

/// CollectionViewDataSource methods.
extension HierarchyViewController: MaterialCollectionViewDataSource {
    
    func items() -> Array<MaterialDataSourceItem> {
        return dataSourceItems
    }
    
    /// Determines the number of items in the collectionView.
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSourceItems.count;
    }
    
    /// Returns the number of sections.
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    /// Prepares the cells within the collectionView.
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: MaterialCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MaterialCollectionViewCell", forIndexPath: indexPath) as! MaterialCollectionViewCell
        let item: MaterialDataSourceItem = dataSourceItems[indexPath.item]
        
        if let _: Dictionary<String, AnyObject> =  item.data as? Dictionary<String, AnyObject> {
            cell.backgroundColor = MaterialColor.blue.base
            let textContainer: NSTextContainer = NSTextContainer(size: view.bounds.size)
            let textView = TextView(textContainer: textContainer)
            textView.font = RobotoFont.regular
            
            textView.placeholderLabel = UILabel()
            textView.placeholderLabel!.textColor = MaterialColor.grey.base
            textView.placeholderLabel!.text = "Enterprise 1"
            cell.addSubview(textView)
        }
        
        return cell
    }
}