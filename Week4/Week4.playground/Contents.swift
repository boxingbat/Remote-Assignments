//There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.

/* 
 有讀取資料相關功能的method, 會在呼叫 reloadData()時重新讀取
 如下是會在reload時重新讀取資料的method
 
1. numberOfSections(in:)
 
 optional func numberOfSections(in tableView: UITableView) -> Int
 If you don’t implement this method, the table configures the table with one section.
 
 
2.  tableView(_:numberOfRowsInSection:)
 
 Asks the data source to return the number of sections in the table view.
 
 func tableView(
     _ tableView: UITableView,
     numberOfRowsInSection section: Int
 ) -> Int
 

 
 
3. Asks the data source for a cell to insert and the title/footer of the header in a particular location of the table view.
 
 tableView(_:cellForRowAt:)
 tableView(_:titleForHeaderInSection:)
 tableView(_:titleForFooterInSection:)
 
 
 
對於insert/delete/move row , 或是rows是否可以被移動等
屬於我們在codeing 本地端的"動作和屬性“, reload() 不會使他們重新運行並抓取資料
 
 ex.
 optional func tableView(
     _ tableView: UITableView,
     moveRowAt sourceIndexPath: IndexPath,
     to destinationIndexPath: IndexPath
 )

 
 */

//Part 4

func printPramid(layer:Int) {
    let length = (layer*2)-1
    for i in 1...layer{
        for j in 1...length{
            let upLimit = (layer+i)-1
            let downLimit = (layer-i)+1
            if j <= upLimit && j >= downLimit {
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
        }
        print()
    }
}

printPramid(layer: 5)
printPramid(layer: 7)
printPramid(layer: 3)

/*
 part 5
 
 我希望能做一個APP 讓用戶可以在上面看到股票/虛擬貨幣走勢 (連接類似yahoo finance的公開API)
 目前想到的功能包括 用戶註冊登入(或是連接metamask),提供基本的投資策略並在給用戶指定投資組合的回測數據
 
 
 
 */
