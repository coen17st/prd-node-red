module.exports = {
    flowFile: 'flows.json',
    credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET,
    flowFilePretty: true,
    adminAuth: {
        type: "credentials",
        users: [{
            username: "admin",
            password: "$2b$08$/vrQad7nTMczn8loufrLMuuQ1pSNEr.yiwu5bGcxoVzMyp4q6Ym5.",
            permissions: "*"
        }]
    },
    httpNodeAuth: { user: "nodered-endpoint", pass: "$2b$08$EZNb/sUabbaxjaJmwZs/PuWtuHZi1LA93A0P2RG7PFRBQkRq0sg4q" },
    httpStaticAuth: { user: "nodered-endpoint", pass: "$2b$08$EZNb/sUabbaxjaJmwZs/PuWtuHZi1LA93A0P2RG7PFRBQkRq0sg4q" },
    uiPort: process.env.PORT || 1880,
    logging: {
        console: {
            level: "info",
            metrics: false,
            audit: false
        }
    },
    exportGlobalContextKeys: false,
    externalModules: {},
    editorTheme: {
        palette: {},
        projects: {
            enabled: true,
            workflow: {
                mode: "manual"
            }
        },
        codeEditor: {
            lib: "monaco",
        }
    },
    tours: true,
    functionExternalModules: true,
    functionGlobalContext: {},
    debugMaxLength: 1000,
    mqttReconnectTime: 15000,
    serialReconnectTime: 15000,
}