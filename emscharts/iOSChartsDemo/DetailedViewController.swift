import UIKit
import Material

class DetailedViewController : UIViewController {
    
    /// A list of all the data source items.
    private var dataSourceItems: Array<MaterialDataSourceItem>!
    
    /// A collectionView used to display entries.
    private var collectionView: MaterialCollectionView!
    
    
    /// NavigationBar title label.
    private var titleLabel: UILabel!
    
    /// NavigationBar menu button.
    private var menuButton: FlatButton!
    
    /// NavigationBar switch control.
    private var switchControl: MaterialSwitch!
    
    /// NavigationBar search button.
    private var searchButton: FlatButton!
    
    /// NavigationBar bookmarks button.
    private var bookmarksButton: FlatButton!
    
    /// NavigationBar inbox button.
    private var inboxButton: FlatButton!
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        prepareTabBarItem()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        prepareTitleLabel()
        prepareMenuButton()
        prepareSwitchControl()
        prepareInboxButton()
        prepareBookMarksButton()
        prepareSearchButton()
        prepareNavigationItem()
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
                height: 610
            ),
            MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ), MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            ),
               MaterialDataSourceItem(
                data: [
                    "placeholder": "Field Placeholder",
                    "detailLabelHidden": false
                ],
                height: 610
            )
        ]
    }
    
    /// Prepares view.
    private func prepareView() {
        view.backgroundColor = MaterialColor.white
    }
    
    /// Prepares the tableView.
    private func prepareCollectionView() {
        collectionView = MaterialCollectionView(frame: view.bounds)
        collectionView.registerClass(MaterialCollectionViewCell.self, forCellWithReuseIdentifier: "MaterialCollectionViewCell")
        collectionView.dataSource = self
        collectionView.contentInset.top = 35
        collectionView.spacing = 5
        
        // Use MaterialLayout to easily align the tableView.
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        //MaterialLayout.alignToParent(view, child: collectionView)
    }
}

/// CollectionViewDataSource methods.
extension DetailedViewController: MaterialCollectionViewDataSource {
    
    func items() -> Array<MaterialDataSourceItem> {
        return dataSourceItems
    }
    
    /// Determines the number of items in the collectionView.
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSourceItems.count;
    }
    
    /// Returns the number of sections.
    func numberOfSectionsInCollectionView(tableView: UICollectionView) -> Int {
        return 1
    }
    
    /// Prepares the cells within the tableView.
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: MaterialCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MaterialCollectionViewCell", forIndexPath: indexPath) as! MaterialCollectionViewCell
        let item: MaterialDataSourceItem = dataSourceItems[indexPath.item]
        
        if let _: Dictionary<String, AnyObject> =  item.data as? Dictionary<String, AnyObject> {
            cell.backgroundColor = MaterialColor.white
            // let imageCardView : ImageCardView = prepareImageCardViewWithoutDetailLabelAndDividerExample()
            // cell.addSubview(imageCardView)
            // imageCardView.translatesAutoresizingMaskIntoConstraints = false
            
            let childview : MaterialView = prepareLargeCardViewExample()
            cell.addSubview(childview)
            childview.translatesAutoresizingMaskIntoConstraints = false
        }
        
        print(cell.height)
        
        return cell
    }
    
    
    
    
    
    private func prepareImageCardViewWithoutDetailLabelAndDividerExample() -> ImageCardView{
        
        var image: UIImage? = UIImage(named: "CosmicMindInverted")
        var url:NSURL = NSURL(string:"")!
        do {
            let data = try NSData(contentsOfURL: url, options: NSDataReadingOptions())
            image = UIImage(data: data)// Error here
        } catch {
            print(error)
        }
        
        let imageCardView: ImageCardView = ImageCardView()
        imageCardView.divider = false
        imageCardView.maxImageHeight = 130
        
        // Image.
        imageCardView.image = image
        
        // Title label.
        let titleLabel: UILabel = UILabel()
        titleLabel.text = "Material Design"
        titleLabel.textColor = MaterialColor.white
        titleLabel.font = RobotoFont.regularWithSize(24)
        imageCardView.titleLabel = titleLabel
        imageCardView.titleLabelInset.top = 80
        
        // Star button.
        let img1: UIImage? = MaterialIcon.cm.star
        let btn1: IconButton = IconButton()
        btn1.pulseColor = MaterialColor.blueGrey.lighten1
        btn1.tintColor = MaterialColor.blueGrey.darken3
        btn1.setImage(img1, forState: .Normal)
        btn1.setImage(img1, forState: .Highlighted)
        
        // Library button.
        let img2: UIImage? = MaterialIcon.cm.audioLibrary
        let btn2: IconButton = IconButton()
        btn2.pulseColor = MaterialColor.blueGrey.lighten1
        btn2.tintColor = MaterialColor.blueGrey.darken3
        btn2.setImage(img2, forState: .Normal)
        btn2.setImage(img2, forState: .Highlighted)
        
        // Share button.
        let img3: UIImage? = MaterialIcon.share
        let btn3: IconButton = IconButton()
        btn3.pulseColor = MaterialColor.blueGrey.lighten1
        btn3.tintColor = MaterialColor.blueGrey.darken3
        btn3.setImage(img3, forState: .Normal)
        btn3.setImage(img3, forState: .Highlighted)
        
        // Add buttons to right side.
        imageCardView.rightButtons = [btn1, btn2, btn3]
        
        print(imageCardView.height)
        print(imageCardView.width)
        
        return imageCardView
        
        
    }
    
    
    private func prepareLargeCardViewExample() -> MaterialView {
        var image: UIImage? = UIImage(named: "CosmicMindInverted")
        var url:NSURL = NSURL(string:"")!
        do {
            let data = try NSData(contentsOfURL: url, options: NSDataReadingOptions())
            image = UIImage(data: data)// Error here
        } catch {
            print(error)
        }
        
        let cardView: MaterialPulseView = MaterialPulseView()
        cardView.width = 200
        cardView.height = 210
        cardView.pulseColor = MaterialColor.blueGrey.base
        cardView.depth = .Depth1
        
        let leftImageView: MaterialView = MaterialView()
        leftImageView.image = image
        leftImageView.contentsGravityPreset = .ResizeAspectFill
        cardView.addSubview(leftImageView)
        
        let contentView: MaterialView = MaterialView()
        contentView.backgroundColor = MaterialColor.clear
        cardView.addSubview(contentView)
        
        let titleLabel: UILabel = UILabel()
        titleLabel.text = "Material"
        titleLabel.textColor = MaterialColor.blueGrey.darken4
        titleLabel.backgroundColor = MaterialColor.clear
        contentView.addSubview(titleLabel)
        
        image = MaterialIcon.cm.moreHorizontal
        let moreButton: IconButton = IconButton()
        moreButton.contentEdgeInsetsPreset = .None
        moreButton.pulseColor = MaterialColor.blueGrey.darken4
        moreButton.tintColor = MaterialColor.blueGrey.darken4
        moreButton.setImage(image, forState: .Normal)
        moreButton.setImage(image, forState: .Highlighted)
        contentView.addSubview(moreButton)
        
        let detailLabel: UILabel = UILabel()
        detailLabel.numberOfLines = 0
        detailLabel.lineBreakMode = .ByTruncatingTail
        detailLabel.font = RobotoFont.regularWithSize(12)
        detailLabel.text = "Express your creativity with Material, an animation and graphics framework for Google's Material Design and Apple's Flat UI in Swift."
        detailLabel.textColor = MaterialColor.blueGrey.darken4
        detailLabel.backgroundColor = MaterialColor.clear
        contentView.addSubview(detailLabel)
        
        let alarmLabel: UILabel = UILabel()
        alarmLabel.font = RobotoFont.regularWithSize(12)
        alarmLabel.text = "34 min"
        alarmLabel.textColor = MaterialColor.blueGrey.darken4
        alarmLabel.backgroundColor = MaterialColor.clear
        contentView.addSubview(alarmLabel)
        
        image = UIImage(named: "ic_alarm_white")?.imageWithRenderingMode(.AlwaysTemplate)
        let alarmButton: IconButton = IconButton()
        alarmButton.contentEdgeInsetsPreset = .None
        alarmButton.pulseColor = MaterialColor.blueGrey.darken4
        alarmButton.tintColor = MaterialColor.red.base
        alarmButton.setImage(image, forState: .Normal)
        alarmButton.setImage(image, forState: .Highlighted)
        contentView.addSubview(alarmButton)
        
        leftImageView.grid.rows = 7
        
        contentView.grid.rows = 5
        contentView.grid.offset.rows = 7
        
        cardView.grid.axis.direction = .None
        cardView.grid.spacing = 4
        cardView.grid.views = [
            leftImageView,
            contentView
        ]
        
        titleLabel.grid.rows = 3
        titleLabel.grid.columns = 8
        
        moreButton.grid.rows = 3
        moreButton.grid.columns = 2
        moreButton.grid.offset.columns = 10
        
        detailLabel.grid.rows = 6
        detailLabel.grid.offset.rows = 3
        
        alarmLabel.grid.rows = 3
        alarmLabel.grid.columns = 8
        alarmLabel.grid.offset.rows = 9
        
        alarmButton.grid.rows = 3
        alarmButton.grid.offset.rows = 9
        alarmButton.grid.columns = 2
        alarmButton.grid.offset.columns = 10
        
        contentView.grid.spacing = 8
        contentView.grid.axis.direction = .None
        contentView.grid.contentInsetPreset = .Square3
        contentView.grid.views = [
            titleLabel,
            moreButton,
            detailLabel,
            alarmLabel,
            alarmButton
        ]
        
        return cardView
    }
    
    /// Prepare tabBarItem.
    private func prepareTabBarItem() {
        print("prepareTabbar")
        tabBarItem.image = MaterialIcon.cm.videocam
        tabBarItem.setTitleColor(MaterialColor.grey.base, forState: .Normal)
        tabBarItem.setTitleColor(MaterialColor.white, forState: .Selected)
    }
    
    
    /// Prepares the titleLabel.
    private func prepareTitleLabel() {
        titleLabel = UILabel()
        titleLabel.text = "IdfyApp"
        titleLabel.textAlignment = .Left
        titleLabel.textColor = MaterialColor.white
    }
    
    /// Prepares the menuButton.
    private func prepareMenuButton() {
        let image: UIImage? = MaterialIcon.cm.menu
        menuButton = FlatButton()
        menuButton.pulseColor = MaterialColor.white
        menuButton.setImage(image, forState: .Normal)
        menuButton.setImage(image, forState: .Highlighted)
        menuButton.addTarget(self, action: #selector(handleMenuButton), forControlEvents: .TouchUpInside)
    }
    
    /// Prepares the switchControl.
    private func prepareSwitchControl() {
        print("Switch Control")
        switchControl = MaterialSwitch(state: .Off, style: .Default, size: .Small)
        switchControl.buttonOnColor = MaterialColor.green.darken3
    }
    
    // Prepares Bookmarks button
    private func prepareInboxButton() {
        let image: UIImage? = MaterialIcon.cm.play
        inboxButton = FlatButton()
        inboxButton.pulseColor = MaterialColor.white
        inboxButton.setImage(image, forState: .Normal)
        inboxButton.setImage(image, forState: .Highlighted)
        inboxButton.addTarget(self, action: #selector(handleInboxButton), forControlEvents: .TouchUpInside)
    }
    
    // Prepares Bookmarks button
    private func prepareBookMarksButton() {
        let image: UIImage? = MaterialIcon.cm.star
        bookmarksButton = FlatButton()
        bookmarksButton.pulseColor = MaterialColor.white
        bookmarksButton.setImage(image, forState: .Normal)
        bookmarksButton.setImage(image, forState: .Highlighted)
        bookmarksButton.addTarget(self, action: #selector(handleBookmarksButton), forControlEvents: .TouchUpInside)
    }
    
    
    /// Prepares the searchButton.
    private func prepareSearchButton() {
        let image: UIImage? = MaterialIcon.cm.search
        searchButton = FlatButton()
        //searchButton.pulseScale = false
        searchButton.pulseColor = MaterialColor.white
        searchButton.setImage(image, forState: .Normal)
        searchButton.setImage(image, forState: .Highlighted)
        searchButton.addTarget(self, action: #selector(handleSearchButton), forControlEvents: .TouchUpInside)
    }
    
    /// Prepares the navigationItem.
    private func prepareNavigationItem() {
        //navigationItem.titleLabel = titleLabel
        navigationItem.leftControls = [menuButton]
        navigationItem.rightControls = [switchControl, searchButton , inboxButton]
    }
    
    /// Handles the menuButton.
    internal func handleMenuButton() {
       // sideNavigationController?.openLeftView()
    }
    
    
    /// Handles the Inbox.
    internal func handleInboxButton() {
        
    }
    
    /// Handles the Bookmarks.
    internal func handleBookmarksButton() {
    }
    
    /// Handles the searchButton.
    internal func handleSearchButton() {
        
    }
    
}