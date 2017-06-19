//+------------------------------------------------------------------+
//|                                                     sampleEA.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, Keisuke Iwabuchi"
#property link      "https://order-button.com/"
#property version   "1.00"
#property strict


#include <mql4_modules\TradeManager\TradeManager.mqh>


int count = 0;


int OnInit()
{
   TradeManager::Init();
   return(INIT_SUCCEEDED);
}


void OnDeinit(const int reason)
{
   Comment("");
}


void OnTick()
{
   TradeManager::Run();
}


void OnTrade()
{
   count++;
   Comment(count);
}


