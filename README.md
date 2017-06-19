# MQL4-TradeManager
MQL5のOnTradeをMQL4でも使うためのモジュール


## Description
取引が発生する毎に処理を実行したいケースが有ったので調べたところ、MQL5にはOnTradeという定義済みイベントが存在した。  
しかしこのOnTradeはMQL4のEAでは実行されなかった。
そこでOnTradeに近い動作を再現するために作成したのが本モジュールである。


## Requirement
- [MQL4-OrderData](https://github.com/KeisukeIwabuchi/MQL4-OrderData)


## Install
1. TradeManager.mqhをダウンロード
2. データフォルダを開き、/MQL4/Includes/mql4_modules/TradeManager/TradeManager.mqhとして保存


## Usage
1. TradeManager.mqhをinclude
2. OnInit内でTradeManager::Init();を実行
3. OnTick内でTradeManager::Run();を実行
4. void OnTrade関数を実装

上記の実装によりOnTick内でポジションの変化を検知し、変化があった場合はOnTrade関数が実行されます。
