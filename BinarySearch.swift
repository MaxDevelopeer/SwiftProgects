func binary_search (keyValue: Int, inputData: [Int]) -> Int? {
    var leftBorder=0
    var rightBorder=inputData.count-1
    var middlePosition=0
    while (leftBorder<=rightBorder)
    {
       middlePosition=leftBorder + (rightBorder-leftBorder)/2
       if (inputData[middlePosition]>keyValue)
       {
           rightBorder=middlePosition-1
       }
       else
       {
           if (inputData[middlePosition]<keyValue)
           {
               leftBorder=middlePosition+1
           }
           else
           {
               return middlePosition
           }
       }
    }
    return nil
}
