import octoprint.plugin

# https://docs.octoprint.org/en/master/plugins/mixins.html#sec-plugins-mixins
# https://docs.octoprint.org/en/master/plugins/mixins.html#sec-plugins-mixins-injectedproperties


#  https://docs.octoprint.org/en/master/plugins/mixins.html#startupplugin
class HelloWorldPlugin(octoprint.plugin.StartupPlugin,
                       octoprint.plugin.TemplatePlugin,
                       octoprint.plugin.SettingsPlugin):
    def on_after_startup(self):
        self._logger.info("Hello World!")

    def get_settings_defaults(self):
        return dict(url="https://en.wikipedia.org/wiki/Hello_world")
        
    def get_template_configs(self):
        return [
            dict(type="navbar", custom_bindings=False),
            dict(type="settings", custom_bindings=False)
        ]

__plugin_pythoncompat__ = ">=3.7,<4"
__plugin_implementation__ = HelloWorldPlugin()