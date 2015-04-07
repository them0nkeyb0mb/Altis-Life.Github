#include <macro.h>
/*
	File: fn_skyDive.sqf
	Author: blaster
	Concepts pulled from: Mokomoko http://www.altisliferpg.com/topic/1938-document-server-commands/
	
	
	Description:
	Sky diving, with a random coloured smoke that deploys once chute is pulled. 
*/
if (backpack player != "") exitWith { hint "You can't be wearing a backpack when you skydive.  Parachutes are somewhat essential!" };
if(life_cash < 5000) exitWith {hint "You don't have enough money to go skydiving!"};
life_cash = life_cash - 5000;

_dropPos = position player;
_dropPos set [2, 5000];
 
cutText ["", "BLACK OUT", 3];
sleep 3;
cutText["You are approaching the drop zone.  Get ready!","BLACK FADED"];
0 cutFadeOut 999999;
player setPos (getMarkerPos "sky_dive");
player addBackpack "B_Parachute";
0 fadeSound 0;
2 fadeSound 1;
for "_i" from 0 to 5 do
{
        sleep 2.2;
        switch (_i) do
        {
                case 3: { playSound "racebeep1"; };
                case 4: { playSound "racebeep1"; };
                case 5: { playSound "racebeep2"; };
        };
};

player setPosASL _dropPos;
_draw = viewDistance;
setViewDistance 6000;
if (cameraView == "EXTERNAL") then { player switchCamera "INTERNAL"; };
cutText ["", "BLACK IN", 0.75];
 
while {(getPos player) select 2 > 100} do
{
        sleep 1;
        _newDistance = (((getPos player) select 2) + 1000);
        if (_newDistance > _draw) then { setViewDistance _newDistance; };
};
 
waitUntil { (getPos player) select 2 < 10 };
 
setViewDistance _draw;