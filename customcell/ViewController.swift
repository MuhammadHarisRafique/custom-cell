
import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblView: UITableView!
    var index:Int!
    var ballName = ["FootBall","FootBall2","TennisBall"]
    var ballFeatures:[String] = ["MultiColor Ball", "BlackAndWhite Ball", "Green Ball"]
    var myimages = [UIImage(named: "a.jpg"), UIImage(named: "b.jpg"), UIImage(named: "c.jpg"), ]
    var backColor = [UIColor.blueColor(), UIColor.yellowColor(), UIColor.lightGrayColor() ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let a:ViewController2ViewController = segue.destinationViewController as! ViewController2ViewController
        if segue.identifier == "selectRowSegue"
        {
            
      //  a.imagefor!.image = myimages[index]
                
       
        }
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
         index = indexPath.row
        
        performSegueWithIdentifier("selectRowSegue", sender: self)
       
        
        
     }
    
    //****** Cell Designing ******//
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomCellTableViewCell
        cell.lblName.text = ballName[indexPath.row]
        cell.lblDescription.text = ballFeatures[indexPath.row]
        cell.photo.image = myimages[indexPath.row]
        
        //cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.backgroundColor = backColor[indexPath.row]
        cell.photo.layer.cornerRadius = cell.photo.frame.size.width / 2
//        cell.accessoryView = UIImageView(image: myimages[indexPath.row])
//        cell.accessoryView?.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        //cell.photo.layer.borderColor = UIColor(backColor[indexPath.row])
        //cell.photo.layer.borderColor = backColor[indexPath.row].CGColor
        
        cell.photo.clipsToBounds = true
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myimages.count
    }
    
    
}

