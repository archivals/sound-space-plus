extends CheckBox

func _process(_d):
	if pressed != SSP.blind:
		SSP.blind = pressed

func upd(): pressed = SSP.blind

func _ready():
	upd()
	SSP.connect("mods_changed",self,"upd")
