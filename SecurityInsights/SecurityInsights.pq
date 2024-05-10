// This file contains your Data Connector logic
[Version = "1.0.0"]
section SecurityInsights;

[DataSource.Kind="SecurityInsights", Publish="SecurityInsights.Publish"]
shared SecurityInsights.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from SecurityInsights: " & _message
    in
        a;

// Data Source Kind description
SecurityInsights = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
SecurityInsights.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = SecurityInsights.Icons,
    SourceTypeImage = SecurityInsights.Icons
];

SecurityInsights.Icons = [
    Icon16 = { Extension.Contents("SecurityInsights16.png"), Extension.Contents("SecurityInsights20.png"), Extension.Contents("SecurityInsights24.png"), Extension.Contents("SecurityInsights32.png") },
    Icon32 = { Extension.Contents("SecurityInsights32.png"), Extension.Contents("SecurityInsights40.png"), Extension.Contents("SecurityInsights48.png"), Extension.Contents("SecurityInsights64.png") }
];
