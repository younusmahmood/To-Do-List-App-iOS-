//
//  FirstViewController.swift
//  To Do List
//
//  Created by Younus Mahmood on 12/30/15.
//  Copyright © 2015 YMINC. All rights reserved.
//

import UIKit

var toDoList =  [String]()


class FirstViewController: UIViewController, UITableViewDelegate {

var quotes = [
    "\"If you want to achieve greatness stop asking for permission.\"",
    "\"Things work out best for those who make the best of how things work out.\"",
    "\"To live a creative life, we must lose our fear of being wrong.\"",
    "\"If you are not willing to risk the usual you will have to settle for the ordinary.\"",
    "\"Trust because you are willing to accept the risk, not because it's safe or certain.\"",
    "\"All our dreams can come true if we have the courage to pursue them.\"",
    "\"Good things come to people who wait, but better things come to those who go out and get them.\"",
    "\"If you do what you always did, you will get what you always got.\"",
    "\"Success is walking from failure to failure with no loss of enthusiasm.\"",
    "\"Just when the caterpillar thought the world was ending, he turned into a butterfly.\"",
    "\"Successful entrepreneurs are givers and not takers of positive energy.\"",
    "\"Whenever you see a successful person you only see the public glories, never the private sacrifices to reach them.\"",
    "\"Opportunities don't happen, you create them.\"",
    "\"Try not to become a person of success, but rather try to become a person of value.\"",
    "\"Great minds discuss ideas; average minds discuss events; small minds discuss people.\"",
    "\"I have not failed. I've just found 10,000 ways that won't work.\"",
    "\"If you don't value your time, neither will others. Stop giving away your time and talents--start charging for it.\"",
    "\"A successful man is one who can lay a firm foundation with the bricks others have thrown at him.\"",
    "\"No one can make you feel inferior without your consent.\"",
    "\"The whole secret of a successful life is to find out what is one's destiny to do, and then do it.\"",
    "\"If you're going through hell keep going.\"",
    "\"The ones who are crazy enough to think they can change the world, are the ones who do.\"",
    "\"Don't raise your voice, improve your argument.",
    "\"What seems to us as bitter trials are often blessings in disguise.\"",
    "\"The meaning of life is to find your gift. The purpose of life is to give it away.\"",
    "\"The distance between insanity and genius is measured only by success.\"",
    "\"When you stop chasing the wrong things, you give the right things a chance to catch you.\"",
    "\"I believe that the only courage anybody ever needs is the courage to follow your own dreams.\"",
    "\"No masterpiece was ever created by a lazy artist.\"",
    "\"If you can't explain it simply, you don't understand it well enough.\"",
    "\"Blessed are those who can give without remembering and take without forgetting.\"",
    "\"Do one thing every day that scares you.\"",
    "\"What's the point of being alive if you don't at least try to do something remarkable.\"",
    "\"Life is not about finding yourself. Life is about creating yourself.\"",
    "\"Nothing in the world is more common than unsuccessful people with talent.\"",
    "\"Knowledge is being aware of what you can do. Wisdom is knowing when not to do it.\"",
    "\"Your problem isn't the problem. Your reaction is the problem.\"",
    "\"You can do anything, but not everything.\"",
    "\"Innovation distinguishes between a leader and a follower.\"",
    "\"Thinking should become your capital asset, no matter whatever ups and downs you come across in your life.\"",
    "\"I find that the harder I work, the more luck I seem to have.\"",
    "\"The starting point of all achievement is desire.\"",
    "\"Success is the sum of small efforts, repeated day-in and day-out.\"",
    "\"If you want to achieve excellence, you can get there today. As of this second, quit doing less-than-excellent work.\"",
    "\"All progress takes place outside the comfort zone.\"",
    "\"You may only succeed if you desire succeeding; you may only fail if you do not mind failing.\"",
    "\"Courage is resistance to fear, mastery of fear--not absence of fear.\"",
    "\"Only put off until tomorrow what you are willing to die having left undone.\"",
    "\"People often say that motivation doesn't last. Well, neither does bathing--that's why we recommend it daily.\"",
    "\"We become what we think about most of the time, and that's the strangest secret.\"",
    "\"The only place where success comes before work is in the dictionary.\"",
    "\"Too many of us are not living our dreams because we are living our fears.\"",
    "\"I find that when you have a real interest in life and a curious life, that sleep is not the most important thing.\"",
    "\"It's not what you look at that matters, it's what you see.\"",
    "\"The road to success and the road to failure are almost exactly the same.\"",
    "\"The function of leadership is to produce more leaders, not more followers.\"",
    "\"Success is liking yourself, liking what you do, and liking how you do it.\"",
    "\"As we look ahead into the next century, leaders will be those who empower others.\"",
    "\"A real entrepreneur is somebody who has no safety net underneath them.\"",
    "\"Whenever you find yourself on the side of the majority, it is time to pause and reflect.\"",
    "\"The successful warrior is the average man, with laser-like focus.\"",
    "\"There is no traffic jam along the extra mile.\"",
    "\"Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.\"",
    "\"If you genuinely want something, don't wait for it--teach yourself to be impatient.\"",
    "\"Don't let the fear of losing be greater than the excitement of winning.\"",
    "\"If you want to make a permanent change, stop focusing on the size of your problems and start focusing on the size of you!\"",
    "\"Two roads diverged in a wood and I  took the one less traveled by, and that made all the difference.\"",
    "\"The number one reason people fail in life is because they listen to their friends, family, and neighbors.\"",
    "\"In my experience, there is only one motivation, and that is desire. No reasons or principle contain it or stand against it.\"",
    "\"Success does not consist in never making mistakes but in never making the same one a second time.\"",
    "\"You must expect great things of yourself before you can do them.\"",
    "\"Motivation is what gets you started. Habit is what keeps you going.\"",
    "\"People rarely succeed unless they have fun in what they are doing.\"",
    "\"There is no chance, no destiny, no fate, that can hinder or control the firm resolve of a determined soul.\"",
    "\"Our greatest fear should not be of failure but of succeeding at things in life that don't really matter.\"",
    "\"You've got to get up every morning with determination if you're going to go to bed with satisfaction.\"",
    "\"A goal is not always meant to be reached; it often serves simply as something to aim at.\"",
    "\"Be miserable. Or motivate yourself. Whatever has to be done, it's always your choice.\"",
    "\"To accomplish great things, we must not only act, but also dream, not only plan, but also believe.\"",
    "\"You measure the size of the accomplishment by the obstacles you had to overcome to reach your goals.\"",
    "\"Real difficulties can be overcome; it is only the imaginary ones that are unconquerable.\"",
    "\"It is better to fail in originality than to succeed in imitation.\"",
    "\"What would you do if you weren't afraid.\"",
    "\"Little minds are tamed and subdued by misfortune; but great minds rise above it.\"",
    "\"Failure is the condiment that gives success its flavor.\"",
    "\"Don't let what you cannot do interfere with what you can do.\"",
    "\"You may have to fight a battle more than once to win it.\""
    
    ]
    

    
    
    @IBOutlet var quoteLabel: UILabel!

    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
        
        toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        
        }
        
        quoteLabel.text = quotes[Int(arc4random_uniform(86))]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toDoList.count
    }
    

     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
        
        
        
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        
        
        return cell
    }
    
    //This method is called whenever the user tries to edit any item in the table
    //In this case we are looking if user wants to delete item
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            toDoList.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
            toDoListTable.reloadData()
            
        }
        
        
        
    }

    
    override func viewDidAppear(animated: Bool) {
        
        toDoListTable.reloadData()
        
        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        let title = "Alert"
        let message = "Are you sure you want to delete all contents of list?"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Destructive) { action in
            let cancelController = UIAlertController(title: "Operation Canceled", message: "Press Okay to return", preferredStyle: .Alert)
            let okayAction = UIAlertAction(title: "Okay", style: .Default, handler: nil)
            cancelController.addAction(okayAction)
            self.presentViewController(cancelController, animated: true, completion: nil)
          
        }
        let confirmAction = UIAlertAction(title: "Confirm", style: .Default) { action in
            let okayController = UIAlertController(title: "List has been deleted", message: "Press Okay to return", preferredStyle: .Alert)
            let okayAction = UIAlertAction(title: "Okay", style: .Default, handler: nil)
            okayController.addAction(okayAction)
            self.presentViewController(okayController, animated: true, completion: nil)
            toDoList.removeAll();
            self.toDoListTable.reloadData()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        presentViewController(alertController, animated: true, completion: nil)
    
    }


}
