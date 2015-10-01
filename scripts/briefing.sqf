/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true},
		["Mission",
			"<marker name='perditus_start'>Perditus</marker> and <marker name='derelictus_start'>Derelictus</marker> will eliminate the plantation owner, Mr. Simonides Dionysodoros, believed to be sleeping in his manor on the north-west side of the <marker name='obj1'>plantation</marker>. Perditus and Derelictus will also find and destroy the <marker name='obj1'>wooden containers</marker> loaded with fresh olive tree saplings before disappearing <marker name='obj3'>north</marker>."],

		["Situation",
			"December 8th 2024: by browsing old news articles, PMC Aegis local high command (callsign 'Corona') has learned that the number one business man on Altis, Mr. Simonides Dionysodoros has invested not only in ouzo but also in olive oil business. He currently owns the only <marker name='obj1'>olive plantation</marker> on Altis but the whole patch of trees were lost to a forest fire this autumn. Mr. Dionysodoros has ordered a large quantity of olive tree saplings which are currently waiting at the plantation for spring to be planted.<br/><br/>Corona has inserted two Aegis teams in the vicinity of the plantation: the <marker name='perditus_start'>surgical team</marker> (callsign 'Perditus') and the <marker name='derelictus_start'>supporting team</marker> (callsign 'Derelictus'). The mission has two objectives: Aegis operators are to destabilize the Altian economy by eliminating Mr. Dionysodoros and making sure the production does not continue by destroying the saplings. The teams will use the cover of darkness and fog to infiltrate the area, complete the objectives and leave to AO to the <marker name='obj3'>north</marker>.<br/><br/>Since Aegis operators have not yet been able to recover their buried weapons from the south tip of Altis, the teams will have something less than ideal at their disposal."],

		["Enemy",
			"Corona estimates that the plantation and the manor are heavily guarded by Mr. Dionysodoros' personal guard detail. Although their equipment is not believed to be military grade, they have a reputation of fighting effectively off Nekron Chelia in the past. As PMC Aegis learned last month, Mr. Dionysodoros' investments on Altis are recognized and protected by the AAF. Corona has located the nearest AAF quick reaction force about 700 meters south-east and the Aegis operators should be expecting enemy reinforcements from that direction.<br/><br/>Corona advices the teams to observe the enemy before engaging and leaving the AO before the AAF forces can respond - Aegis forces will be at significant disadvantage againt organized military forces.<br/><br/>Corona advices Aegis operators again to make use of flashlights, flares and chemlights since Aegis has not been able to acquire NVGs. The plantation guards and workers also lack NV capabilities and sneaking in should be relatively easy. Corona has chosen this moonless night in particular for the operation."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element, based at FOB Cuprum.<br/>Derelictus: supporting element, based at FOB Ferrum."],

        ["Additional",
			"PMC Aegis uses FHQ Task Tracker to provide operators with briefings and tasks."]

] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Eliminate the <marker name='obj1'>plantation</marker> owner, Mr. Simonides Dionysodoros, believed to be sleeping in his manor on the north-west side of the plantation.",				       // Task text in briefing
         "Eliminate the plantation owner.",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Find and destroy the sixteen <marker name='obj1'>wooden boxes</marker> loaded with olive tree saplings. Corona is a keen horticulture aficionado and knows that the saplings must be kept outside in fresh air.",				       // Task text in briefing
         "Destroy the boxes.",							// Task title in briefing
         "commander"											// Waypoint text

        ],
		["task3",										// Task name
         "Leave the AO to the <marker name='obj3'>north</marker> and return to your FOBs.",				       // Task text in briefing
         "Disappear north.",							// Task title in briefing
         "ammo trucks"											// Waypoint text
        ]

] call FHQ_TT_addTasks;
