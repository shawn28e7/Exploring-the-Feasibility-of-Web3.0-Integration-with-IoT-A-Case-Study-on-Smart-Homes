pragma solidity ^0.8.17;

contract Control
{
    bool light = false;
    function switch_light() public
    {
        if (light == true)
        {
            light = false;
        }
        else
        {
            light = true;
        }
    }
    string identity;
    int status; // 0-no, 1-people, 2-unknown_people
    function nothing() public
    {
        identity =  "";
        status = 0;
    }

    function known_people(string memory who) public
    {
        identity = who;
        status = 1;
    }

    function unknown_people(string memory picture) public
    {
        identity = picture;
        status = 2;
    }
}
