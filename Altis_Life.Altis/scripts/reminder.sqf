_text1 = parseText format ["<t color='#1BCADE' size='1'>Please Enjoy Your Stay Here At OneShotGaming Altis Life!</t>"];
_text2 = parseText format ["<t color='#1BCADE' size='1'>Join Us On Teamspeak: tsgb1.vilayer.com:10036</t>"];
_text3 = parseText format ["<t color='#1BCADE' size='1'>If You Require Assistance With Anything In Relation To Our Server, Please Connect To Our Teamspeak3 This Will Ensure Your Situation Is Sorted Asap !</t>"];
_text4 = parseText format ["<t color='#1BCADE' size='1'>Hit INSERT to Enable/Disable Ear Plugs!</t>"];


while {true} do
{
	sleep 300;
	hint _text1;
	sleep 300;
	hint _text2;
	sleep 300;
	hint _text3;
	sleep 300;
	hint _text4;
	sleep 300;
};