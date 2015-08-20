private ["_configPath", "_loadoutTarget"];

// Get config entry
_configPath = _this select 0;
_loadoutTarget = _this select 1;

if(getText _configPath == "") then {
  removeHeadgear _loadoutTarget;
} else {
  _loadoutTarget addHeadgear getText (_configPath);
};
