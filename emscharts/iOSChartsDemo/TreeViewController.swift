import UIKit
/*
class TreeViewController:
    UIViewController,
    RATreeViewDataSource,
    RATreeViewDelegate
{
    private var treeView: RATreeView!
    private let xibName = "TreeViewSampleCell"
    
    override dynamic func viewDidLoad() {
        treeView = RATreeView(frame: self.view.bounds)
        treeView.delegate = self
        treeView.dataSource = self
        
        treeView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        view.addSubview(treeView)
        treeView.reloadData()
        
        treeView.registerNib(
            UINib(nibName: xibName, bundle: nil),
            forCellReuseIdentifier: xibName)
    }
    
    func treeView(treeView: RATreeView!, numberOfChildrenOfItem item: AnyObject!) -> Int {
        return item ? 3 : 0
    }
    
    func treeView(treeView: RATreeView!, cellForItem item: AnyObject!) -> UITableViewCell! {
        let cell = treeView!.dequeueReusableCellWithIdentifier(xibName) as! TreeViewCell
        ...
        return cell
    }
    
    func treeView(treeView: RATreeView!, child index: Int, ofItem item: AnyObject!) -> AnyObject! {
        return index
    }
}*/