var langserver = null

exports.activate = function () {
    // Do work when the extension is activated
    langserver = new BladeLanguageServer()
}

exports.deactivate = function () {
    // Clean up state before the extension is deactivated
    if (langserver) {
        langserver.deactivate()
        langserver = null
    }
}

class BladeLanguageServer {
    constructor() {
        // Observe the configuration setting for the server's location, and restart the server on change
        nova.config.observe(
            'example.language-server-path',
            function (path) {
                this.start(path)
            },
            this
        )
    }

    path() {
        let lspPath = nova.path.join(
            nova.extension.path,
            'builds/laravel-dev-tools'
        )
        return lspPath
    }

    deactivate() {
        this.stop()
    }

    start(path) {
        if (this.languageClient) {
            this.languageClient.stop()
            nova.subscriptions.remove(this.languageClient)
        }

        // Use the default server path
        if (!path) {
            path = this.path()
        }

        // Create the client
        var serverOptions = {
            args: ['lsp'],
            path: path,
        }
        var clientOptions = {
            // The set of document syntaxes for which the server is valid
            debug: true,
            syntaxes: ['blade'],
        }
        var client = new LanguageClient(
            'example-langserver',
            'Example Language Server',
            serverOptions,
            clientOptions
        )

        try {
            // Start the client
            client.start()

            // Add the client to the subscriptions to be cleaned up
            nova.subscriptions.add(client)
            this.languageClient = client
        } catch (err) {
            // If the .start() method throws, it's likely because the path to the language server is invalid

            if (nova.inDevMode()) {
                console.error(err)
            }
        }
    }

    stop() {
        if (this.languageClient) {
            this.languageClient.stop()
            nova.subscriptions.remove(this.languageClient)
            this.languageClient = null
        }
    }
}
