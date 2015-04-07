/*
    File: fn_interactFence.sqf
    Author: Robert "Jimbobob"
    
    Description:
    Allows players to cut wire fences.
*/

switch (playerSide) do
{
    case west:
    {
        hint "You have repaired the fence"; //prints message
        _nObject = nearestObject [player, "Land_CncWall4_F"]; //runs the script on the nearest wall of that class ref
        _nObject setDamage 0; // repairs the fence
    };
    case civilian:
    {
        if(life_inv_fencecutters < 1) exitWith { hint "You have no fence cutters."; }; // line for not having cutters
        if(life_inv_fencecutters > 1) then //line for having wire cutters
        {
            life_inv_fencecutters = life_inv_fencecutters - 1; //uses the cutters
            hint "You have cut the fence"; //prints message
            _nObject = nearestObject [player, "Land_CncWall4_F"]; //runs the script on the nearest wall of that class ref
            _nObject setDamage 1;; // destroys the fence
        };
    };
    
    case independent:
    {
        hint "You're not a civilian"; //prints message
    };
};