# MQL4-TradeManager
OnTrade (This function is called when the Trade event occurs) for MQL4.


## Description
Since there was a case where we wanted to execute processing every time a transaction occurred, as a result of checking, there was a predefined event called OnTrade in MQL5.  
However, this OnTrade was not executed in MQL4.  
Therefore, this module is created to reproduce the operation close to OnTrade.


## Requirement
- [MQL4-OrderData](https://github.com/KeisukeIwabuchi/MQL4-OrderData)


## Install
1. Download TradeManager.mqh
2. Save the file to /MQL4/Include/mql4_modules/TradeManager/TradeManager.mqh


## Usage
1. Include TradeManager.mqh.
2. Execute TradeManager::Init(); in OnInit function.
3. Execute TradeManager::Run(); in OnTick function.
4. Implement the OnTrade function.

The OnTick detects changes in position, and if there is a change, the OnTrade function is executed.
