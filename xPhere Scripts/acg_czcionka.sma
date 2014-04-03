#include <amxmodx>
#include <acg>

#define PLUGIN "[ACG] Custom Fonts"
#define VERSION "1.0 KURWA BUILD"
#define AUTHOR "ToRRent"


public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR)
}

public client_putinserver(id)
{
	if(acg_userstatus(id) && !is_user_bot(id))
	{
		set_task(2.0, "Czcionka", id)
	}
}

public Czcionka(id)
{
	for(new i=0; i<=8;i++)
	{
		acg_initfont(id, "Arial Black", 12, 1, 0, 0,i) // exp bar
	}
	acg_initfont(id, "csp_text", 14, 1, 0, 0, 9) // ks airtrap info
	acg_initfont(id, "Verdana", 12, 1, 0, 0, 10) // ks licznik EMP
	acg_initfont(id, "Verdana", 14, 1, 0, 0, 11) // info dla klas
	acg_initfont(id, "Verdana", 12, 1, 0, 0, 12) // Dodatkowe info bartek
	acg_initfont(id, "csp_text", 18, 1 ,0, 0,31) // Sprint bar
	acg_initfont(id, "csp_text", 18, 0 ,0, 0,30) // 1st
	acg_initfont(id, "csp_text", 18, 0 ,0, 0,29) // 2nd
	acg_initfont(id, "csp_text", 18, 0 ,0, 0,28) // 3rd
}
	
