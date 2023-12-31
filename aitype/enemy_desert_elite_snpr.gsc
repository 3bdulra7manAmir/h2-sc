// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "sniper_glint.csv";
    if ( level.script == "boneyard" )
	{
		self.team = "allies";	
	}
	else
	{
		self.team = "axis";
	}
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(2) )
    {
        case 0:
            self.weapon = "wa2000_thermal";
            break;
        case 1:
            self.weapon = "wa2000";
            break;
    }

    if ( level.script == "estate" )
	{
		switch( codescripts\character::get_random_character(5) )
        {
            case 0:
                character\character_tf_141_forest_ar::main();
                break;
            case 1:
                character\character_tf_141_forest_assault_b::main();
                break;
            case 2:
                character\character_tf_141_forest_ozone::main();
                break;
            case 3:
                character\character_tf_141_forest_scarecrow::main();
                break;
            case 4:
                character\character_tf_141_forest_shtgn::main();
                break;
        }
	}
    else if( level.script == "af_caves" || level.script == "af_chase" || level.script == "ending" )
    {
        switch( codescripts\character::get_random_character(5) )
        {
            case 0:
                character\character_us_army_assault_a::main();
                break;
            case 1:
                character\character_us_army_assault_b::main();
                break;
            case 2:
                character\character_us_army_assault_c::main();
                break;
            case 3:
                character\character_us_army_smg::main();
                break;
            case 4:
                character\character_us_army_smg_b::main();
                break;
        }
    }
	else
	{
		character\character_shadow_co_smg::main();
	}

}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_shadow_co_smg::precache();
    character\character_tf_141_forest_ar::precache();
    character\character_tf_141_forest_assault_b::precache();
    character\character_tf_141_forest_ozone::precache();
    character\character_tf_141_forest_scarecrow::precache();
    character\character_tf_141_forest_shtgn::precache();
    character\character_us_army_assault_a::precache();
    character\character_us_army_assault_b::precache();
    character\character_us_army_assault_c::precache();
    character\character_us_army_smg::precache();
    character\character_us_army_smg_b::precache();
    precacheitem( "wa2000_thermal" );
    precacheitem( "wa2000" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
