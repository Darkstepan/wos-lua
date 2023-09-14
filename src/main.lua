--!strict

-- OBJECTS
type Event =
	"Triggered"
	| "Configured"
	| "OnClick"
	| "Chat ted"
	| "Touched"
	| "KeyPressed"
	| "Text Inputted"
	| "MessageSent"
	| "CursorMoved"
	| "CursorPressed"
	| "CursorReleased"

type JSONValue = string | number | boolean
type JSON = { [JSONValue]: JSON } | JSONValue

export type Connection = {
	Unbind: (self: Connection) -> (),
}

export type CoordinateIterator = (invariant: any, index: number) -> (nil, string)

export type RegionInfo = {
	Type: "Planet",
	SubType: nil,
	Name: string,
	TidallyLocked: boolean,
	HasRings: boolean,
	BeaconCount: number,
} | {
	Type: "Planet",
	SubType: "Desert" | "Terra" | "EarthLike" | "Ocean" | "Tundra" | "Forest" | "Exotic" | "Barren" | "Gas",
	Name: string,
	Color: Color3,
	Resources: { string },
	Gravity: number,
	HasAtmosphere: boolean,
	TidallyLocked: boolean,
	HasRings: boolean,
	BeaconCount: number,
} | {
	Type: "BlackHole",
	Name: string,
	Size: number,
	BeaconCount: number,
} | {
	Type: "Star",
	SubType: "Red" | "Orange" | "Yellow" | "Blue" | "Neutron",
	Name: string,
	Size: number,
	BeaconCount: number,
}

export type ScreenObject = {
	ChangeProperties: (self: ScreenObject, Properties: { [string]: any }) -> (),
	AddChild: (self: ScreenObject, Child: ScreenObject) -> (),
	Destroy: (self: ScreenObject) -> (),
	[string]: any,
}

export type Cursor = {
	X: number,
	Y: number,
	Player: string,
	Pressed: boolean,
}

-- PARTS
type PartClassName =
	"100k"
	| "Aerogel"
	| "AirSupply"
	| "AlienCore"
	| "Aluminum"
	| "Anchor"
	| "Antenna"
	| "Apparel"
	| "Artillery"
	| "Asphalt"
	| "Assembler"
	| "AutomaticLaser"
	| "Ball"
	| "BallastTank"
	| "Balloon"
	| "Battery"
	| "Beacon"
	| "Beryllium"
	| "Bin"
	| "BlackBox"
	| "Blade"
	| "BlastingCap"
	| "Boiler"
	| "Boombox"
	| "Brick"
	| "BurnerGenerator"
	| "BurstLaser"
	| "Button"
	| "Camera"
	| "Cannon"
	| "Cement"
	| "Chute"
	| "Cleat"
	| "CloningBay"
	| "Cloth"
	| "Coal"
	| "CombustionTurbine"
	| "Cone"
	| "Constructor"
	| "Container"
	| "Controller"
	| "ConveyorBelt"
	| "Cooler"
	| "Copper"
	| "CornerRoundWedge"
	| "CornerRoundWedge2"
	| "CornerTetra"
	| "CornerWedge"
	| "Coupler"
	| "CrudeWing"
	| "Cylinder"
	| "DarkConverter"
	| "DarkMatter"
	| "DarkReactor"
	| "Decoupler"
	| "DelayWire"
	| "DeleteSwitch"
	| "Diamond"
	| "Diode"
	| "Disk"
	| "Dispenser"
	| "Door"
	| "DriveBox"
	| "ElectricFence"
	| "Electromagnet"
	| "EnergyBomb"
	| "EnergyGun"
	| "EnergyShield"
	| "Engine"
	| "EthernetCable"
	| "ExoticMatter"
	| "Explosive"
	| "Extractor"
	| "Faucet"
	| "Fence"
	| "Filter"
	| "FireWood"
	| "Fireworks"
	| "Flamethrower"
	| "Flint"
	| "FloatDevice"
	| "Food"
	| "Framewire"
	| "Freezer"
	| "Gasoline"
	| "Gear"
	| "GeigerCounter"
	| "Generator"
	| "Glass"
	| "Gold"
	| "Goo"
	| "Grass"
	| "GravityGenerator"
	| "Gun"
	| "Gyro"
	| "HalfSphere"
	| "Handle"
	| "Hatch"
	| "Heater"
	| "Heatshield"
	| "Helium"
	| "Hologram"
	| "Hull"
	| "Hydrogen"
	| "Hydroponic"
	| "HyperDrive"
	| "Ice"
	| "Igniter"
	| "ImpulseCannon"
	| "Instrument"
	| "IonRocket"
	| "Iron"
	| "Jade"
	| "Keyboard"
	| "Kiln"
	| "Laser"
	| "Lava"
	| "Lead"
	| "LifeSensor"
	| "Light"
	| "LightBridge"
	| "LightTube"
	| "Magnesium"
	| "Marble"
	| "Melter"
	| "Microcontroller"
	| "Microphone"
	| "MiningLaser"
	| "Modem"
	| "Motor"
	| "MustardGas"
	| "Neon"
	| "Neutronium"
	| "NitrogenOxide"
	| "NuclearWaste"
	| "Obamium"
	| "Obelisk"
	| "Oil"
	| "Perfectium"
	| "Petroleum"
	| "Pipe"
	| "Plasma"
	| "PlasmaCannon"
	| "Plastic"
	| "Plutonium"
	| "PlutoniumCore"
	| "Polysilicon"
	| "Port"
	| "PowerCell"
	| "Primer"
	| "Propeller"
	| "Prosthetic"
	| "Pulverizer"
	| "Pump"
	| "Quartz"
	| "RTG"
	| "Radar"
	| "Rail"
	| "Railgun"
	| "Reactor"
	| "Refinery"
	| "RegionCloaker"
	| "ReinforcedGlass"
	| "Relay"
	| "RemoteControl"
	| "Rocket"
	| "Rotor"
	| "RoundWedge"
	| "RoundWedge2"
	| "Rubber"
	| "Ruby"
	| "RustedMetal"
	| "Sail"
	| "Sand"
	| "Scrapper"
	| "Screen"
	| "Seat"
	| "Servo"
	| "Shotgun"
	| "Sign"
	| "Silicon"
	| "Snow"
	| "SolarPanel"
	| "SolarScoop"
	| "SoundMuffler"
	| "SpawnPoint"
	| "Speaker"
	| "Spotlight"
	| "StarMap"
	| "StasisField"
	| "Steam"
	| "SteamEngine"
	| "SteamTurbine"
	| "Stick"
	| "Stone"
	| "StorageSensor"
	| "StudAligner"
	| "Sulfur"
	| "Switch"
	| "Teleporter"
	| "Telescope"
	| "TemperatureSensor"
	| "Tetrahedron"
	| "Thruster"
	| "Tile"
	| "TimeSensor"
	| "TintedGlass"
	| "Tire"
	| "Titanium"
	| "TouchScreen"
	| "TouchSensor"
	| "Transformer"
	| "Transporter"
	| "Treads"
	| "TriggerSwitch"
	| "TriggerWire"
	| "Truss"
	| "Turbofan"
	| "Uranium"
	| "Valve"
	| "VehicleSeat"
	| "Warhead"
	| "Water"
	| "WaterCooler"
	| "Wedge"
	| "Winch"
	| "Wing"
	| "Wire"
	| "WirelessButton"
	| "Wood"
	| "ZapWire"

export type Part = {
	ClassName: PartClassName,
	GUID: string,

	GetColor: (self: Part) -> Color3,
	GetSize: (self: Part) -> Vector3,
	Trigger: (self: Part) -> (),

	Connect: (self: Part, event: "Triggered" | "Configured", callback: (...any) -> ()) -> Connection,

	Configure: (self: Part, properties: { [string]: nil }) -> (),
}

export type Antenna = Part & {
	ClassName: "Antenna",
	AntennaID: number,

	Configure: (self: Antenna, properties: {
		AntennaID: number?,
	}) -> (),
}

export type Assembler = Part & {
	ClassName: "Assembler",

	Configure: (self: Assembler, properties: {
		Assemble: string?,
	}) -> (),
}

export type Constructor = Part & {
	ClassName: "Constructor",
	
	Configure: (self: Assembler, properties: {
		ModelCode: string?,
		Autolock: boolean?,
		RelativeToConstructor: boolean?,
	}) -> (),
}

export type Button = Part & {
	ClassName: "Button",

	Connect: (self: Button, event: "OnClick", callback: (...any) -> ()) -> Connection,

}

export type Port = Part & {
	ClassName: "Port",
}

export type Gyro = Part & {
	ClassName: "Gyro",

	PointAt: (self: Gyro, position: Vector3) -> (),

	Configure: (
		self: Gyro,
		properties: {
			Seek: string?,
			MaxTorque: Vector3?,
			DisableWhenUnpowered: boolean?,
			TriggerWhenSeeked: boolean?,
		}
	) -> (),

	Seek: string?,
	MaxTorque: Vector3?,
	DisableWhenUnpowered: boolean?,
	TriggerWhenSeeked: boolean?,
}

export type Keyboard = Part & {
	ClassName: "Keyboard",

	SimulateKeyPress: (self: Keyboard, key: string?, Player: string) -> (),
	SimulateTextInput: (self: Keyboard, input: string?, Player: string) -> (),

	Connect: (self: Keyboard, event: "TextInputted" | "KeyPressed", callback: (...any) -> ()) -> Connection,
}

export type Microphone = Part & {
	ClassName: "Microphone",

	Connect: (self: Microphone, event: "Chatted", callback: (...any) -> ()) -> Connection,
}

export type LifeSensor = Part & {
	ClassName: "LifeSensor",

	GetReading: (self: LifeSensor) -> { [string]: Vector3 },
}

export type Instrument = Part & {
	ClassName: "Instrument",

	GetReading: (self: Instrument, typeId: number?) -> any,

	Configure: (self: Instrument, properties: {
		Type: number?,
	}) -> (),

	Type: number,
}

export type EnergyShield = Part & {
	ClassName: "EnergyShield",

	GetShieldHealth: (self: EnergyShield) -> number,

	Configure: (
		self: EnergyShield,
		properties: {
			ShieldRadius: number?,
			RegenerationSpeed: number?,
			ShieldStrength: number?,
		}
	) -> (),

	ShieldRadius: number,
	RegenerationSpeed: number,
	ShieldStrength: number,
}

export type Disk = Part & {
	ClassName: "Disk",

	ClearDisk: (self: Disk) -> (),
	Write: (self: Disk, key: string, data: string) -> number,
	Read: (self: Disk, key: string) -> number,
	ReadEntireDisk: (self: Disk) -> { [string]: string },
}

export type Bin = Part & {
	ClassName: "Bin",

	GetAmount: (self: Bin) -> number,
	GetResource: (self: Bin) -> string,
}

export type Faucet = Part & {
	ClassName: "Faucet",

	GetAmount: (self: Faucet) -> number,
	GetResource: (self: Faucet) -> string,
}

export type Modem = Part & {
	ClassName: "Modem",

	PostRequest: (self: Modem, domain: string, data: string) -> (),
	GetRequest: (self: Modem, domain: string) -> (),
	SendMessage: (self: Modem, data: string, id: number) -> (),
	RealPostRequest: (
		self: Modem,
		domain: string,
		data: string,
		async: boolean,
		transformFunction: (succes: boolean, response: { [string]: any }) -> (),
		optionalHeaders: { string }?
	) -> (),

	Connect: (self: Modem, event: "MessageSent", callback: (...any) -> ()) -> Connection,

	Configure: (self: Modem, properties: {
		NetworkID: number?,
	}) -> (),

	NetworkID: number,
}

export type Screen = Part & {
	ClassName: "Screen",

	GetDimensions: (self: Screen) -> Vector2,
	ClearElements: (self: Screen, className: string?, properties: { [string]: any }?) -> (),
	CreateElement: (self: Screen, className: string, properties: { [string]: any }) -> ScreenObject,

	Configure: (self: Screen, properties: {
		VideoID: number?,
	}) -> (),

	VideoID: number,
}

export type TouchScreen = Part & {
	ClassName: "TouchScreen",

	GetCursor: (self: TouchScreen) -> Cursor,
	GetCursors: (self: TouchScreen) -> { Cursor },

	GetDimensions: (self: TouchScreen) -> Vector2,
	ClearElements: (self: TouchScreen, className: string?, properties: { [string]: any }?) -> (),
	CreateElement: (self: TouchScreen, className: string, properties: { [string]: any }) -> ScreenObject,

	Connect: (self: TouchScreen, event: "CursorMoved" | "CursorPressed" | "CursorReleased", callback: (...any) -> ()) -> Connection,

	Configure: (self: TouchScreen, properties: {
		VideoID: number?,
	}) -> (),

	VideoID: number,
}

export type TouchSensor = Part & {
	ClassName: "TouchSensor",

	Connect: (self: TouchSensor, event: "Touched", callback: (...any) -> ()) -> Connection,
}

export type Rail = Part & {
	ClassName: "Rail",

	SetPosition: (self: Rail, depth: number) -> (),

	Configure: (
		self: Instrument,
		properties: {
			Position1: number?,
			Position2: number?,
			TweenTime: number?,
		}
	) -> (),

	Position1: number,
	Position2: number,
	TweenTime: number,
}

export type StarMap = Part & {
	ClassName: "StarMap",

	GetBodies: (self: StarMap) -> (CoordinateIterator, any, number),
	GetSystems: (self: StarMap) -> (CoordinateIterator, any, number),
}

export type Telescope = Part & {
	ClassName: "Telescope",

	GetCoordinate: (self: Telescope, X1: string?, Y1: string?, X2: string?, Y2: string?) -> RegionInfo,

	Connect: (self: Telescope, event: "WhenRegionLoads", callback: (...any) -> ()) -> Connection,
	Configure: (self: Telescope, properties: {
		ViewCoordinates: string?,
	}) -> (),

	ViewCoordinates: string,
}

export type Speaker = Part & {
	ClassName: "Speaker",

	PlaySound: (self: Speaker, id: number) -> (),
	ClearSounds: (self: Speaker) -> (),
	Chat: (self: Speaker, message: string) -> (),

	Configure: (self: Speaker, properties: {
		Pitch: number?,
		Audio: string?,
	}) -> (),

	Pitch: number,
	Audio: string,
}

export type Reactor = Part & {
	ClassName: "Reactor",

	GetFuel: (self: Reactor) -> { number },
	GetTemp: (self: Reactor) -> number,

	Configure: (self: Reactor, properties: {
		Alarm: boolean?,
	}) -> (),

	Alarm: boolean,
}

export type Dispenser = Part & {
	ClassName: "Dispenser",
	Dispense: (self: Dispenser) -> (),

	Configure: (self: Dispenser, properties: {
		Filter: string?,
	}) -> (),

	Filter: string,
}

export type Container = Part & {
	ClassName: "Container",
	Dispense: (self: Container) -> (),

	Configure: (self: Container, properties: {
		Filter: string?,
	}) -> (),

	Filter: string,
}

export type Polysilicon = Part & {
	ClassName: "Polysilicon",

	Configure: (self: Polysilicon, properties: {
		PolysiliconMode: number?,
		Frequency: number?,
	}) -> (),

	PolysiliconMode: number,
	Frequency: number,
}

export type Microcontroller = Part & {
	ClassName: "Microcontroller",
	Communicate: (nil) -> nil,

	Configure: (self: Microcontroller, properties: {
		Code: string?,
	}) -> (),
}

export type Servo = Part & {
	ClassName: "Servo",

	SetAngle: (self: Servo, angle: number) -> (),

	Configure: (
		self: Servo,
		properties: {
			Responsiveness: number,
			ServoSpeed: number?,
			AngleStep: number?,
		}
	) -> (),

	Responsiveness: number,
	ServoSpeed: number,
	AngleStep: number,
}

export type HyperDrive = Part & {
	ClassName: "HyperDrive",

	GetRequiredPower: (self: HyperDrive) -> number,

	Configure: (self: HyperDrive, properties: {
		Coordinates: string?,
	}) -> (),

	Coordinates: string,
}

export type BlackBox = Part & {
	ClassName: "BlackBox",
	Connect: (self: BlackBox, event: "GetLogs", callback: (...any) -> ()) -> Connection,
}

export type Switch = Part & {
	ClassName: "Switch",
	Configure: (self: Switch, properties: {
		SwitchValue: boolean?,
	}) -> (),

	SwitchValue: boolean,
}

export type Light = Part & {
	ClassName: "Light",
	Configure: (self: Light, properties: {
		Brightness: number?,
		LightRange: number?,
	}) -> (),

	Brightness: number,
	LightRange: number,
}

-- MICROCONTROLLER GLOBALS

function GetPartFromPort(port: number | Port, partType: PartClassName | string): Part end
function GetPartsFromPort(port: number | Port, partType: PartClassName | string): { Part } end

function JSONEncode(data: JSON): string end
function JSONDecode(json: string): JSON end

function TriggerPort(port: number | Port): () end
function GetPort(port: number | Port): Port end

function Beep(pitch: number): () end

return {GetPartFromPort, GetPartsFromPort, JSONEncode, JSONDecode, TriggerPort, GetPort, Beep}