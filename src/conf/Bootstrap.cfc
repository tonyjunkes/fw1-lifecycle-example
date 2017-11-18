component displayname="FW/1 Lifecycle Bootstrap" extends="framework.one"
	output=false
{
	// FW/1 settings
	variables.framework = {
		base: "/src",
		defaultSection: "main",
		defaultItem: "default",
		error: "main.error",
		diEngine: "di1",
		diLocations: "/src/model",
		diConfig: {
			loadListener: function(di1) {
				di1.declare("Greeting").asValue("Hello World!");
			}
		},
		routes: [
			{ "/" = "/main/default" }
		],
		subsystems: { },
		trace = true,
		reloadApplicationOnEveryRequest = true
	};

	public void function setupApplication() { }

	public void function setupEnvironment(string env) { }

	public void function setupSession() { }

	public void function setupRequest() { }

	public void function setupResponse(struct rc) { }

	public void function setupSubsystem(string module) { }

	public void function setupView(struct rc) {
		rc.date = now();
	}

	public string function onMissingView(struct rc) {
		return "Error 404 - Page not found.";
	}
}
