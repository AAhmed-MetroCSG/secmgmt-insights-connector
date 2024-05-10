// This file contains your Data Connector logic
[Version = "1.0.0"]
section SECMGMT-Connector;

[DataSource.Kind="SECMGMT-Connector", Publish="SECMGMT-Connector.Publish"]
shared SECMGMT-Connector.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from SECMGMT-Connector: " & _message
    in
        a;

// Data Source Kind description
SECMGMT-Connector = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
SECMGMT-Connector.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = SECMGMT-Connector.Icons,
    SourceTypeImage = SECMGMT-Connector.Icons
];

SECMGMT-Connector.Icons = [
    Icon16 = { Extension.Contents("SECMGMT-Connector16.png"), Extension.Contents("SECMGMT-Connector20.png"), Extension.Contents("SECMGMT-Connector24.png"), Extension.Contents("SECMGMT-Connector32.png") },
    Icon32 = { Extension.Contents("SECMGMT-Connector32.png"), Extension.Contents("SECMGMT-Connector40.png"), Extension.Contents("SECMGMT-Connector48.png"), Extension.Contents("SECMGMT-Connector64.png") }
];
