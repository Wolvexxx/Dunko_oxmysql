local cfg = {}
------------------------------------
--      By DariusMen#8109         --
------------------------------------
--     discord.io/drshop          --
------------------------------------
cfg.open_wallet = 5000000
cfg.open_bank = 20000000

cfg.display_css = [[

  @import url('https://fonts.googleapis.com/css2?family=Fugaz+One&display=swap');

  .div_money{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
    top: 40px;
    font-size: 15px;
    right: 15px;
    text-align:center;
    padding: 5px;
    width : 180px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 15px;
    font-family: 'Fugaz One', cursive;
    color: #FFFFFF;
    box-shadow: 0px 0px 5px 1px rgba(141, 0, 197, 0.9);
    text-shadow: 1.8px 1.8px black;
  }
  .div_bmoney{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
    top: 82px;
    font-size: 15px;
    text-align:center;
    right: 15px;
    text-align:5px;
    padding: 5px;
    width : 180px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 15px;
    font-family: 'Fugaz One', cursive;
    color: #FFFFFF;
    box-shadow: 0px 0px 5px 1px rgba(141, 0, 197, 0.9);
    text-shadow: 1.8px 1.8px black;
  }

  .div_Giftpoints{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
    top: 124px;
    font-size: 15px;
    text-align:center;
    right: 15px;
    text-align:5px;
    padding: 5px;
    width : 180px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 15px;
    font-family: 'Fugaz One', cursive;
    color: #FFFFFF;
    box-shadow: 0px 0px 5px 1px rgba(141, 0, 197, 0.9);
    text-shadow: 1.8px 1.8px black;
  }
  .div_donationCoins{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
    top: 166px;
    font-size: 15px;
    right: 15px;
    text-align:center;
    padding: 5px;
    width : 180px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 15px;
    font-family: 'Fugaz One', cursive;
    color: #FFFFFF;
    box-shadow: 0px 0px 5px 1px rgba(141, 0, 197, 0.9);
    text-shadow: 1.8px 1.8px black;
  }  

  .div_money .symbol{
    content: url('https://cdn.discordapp.com/attachments/927604681360936980/927608406473330739/bani.png'); 
    animation: logomove 2.1s infinite;
    float: left;
    margin-left: 5px;
  }
  
  .div_bmoney .symbol{
    content: url('https://cdn.discordapp.com/attachments/927604681360936980/927608387926098020/banca.png');
    animation: logomove 2.1s infinite;
    float: left;
    margin-left: 5px;
  }

  .div_Giftpoints .symbol{
    content: url('https://i.imgur.com/GT6jkER.png');
    animation: logomove 2.1s infinite;
    float: left;
    margin-left: 5px;
  }

  .div_donationCoins .symbol{
    content: url('https://cdn.discordapp.com/attachments/927604681360936980/927608429562953768/diamant.png');
    animation: logomove 2.1s infinite;
    float: left;
    margin-left: 5px;
  }  


  
]]

return cfg