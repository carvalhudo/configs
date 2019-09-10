# Always restore open sites when qutebrowser is reopened.
c.auto_save.session = True

# Enable JavaScript.
config.set('content.javascript.enabled', True, 'file://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# Directory to save downloads to. If unset, a sensible OS-specific
# default is used.
c.downloads.location.directory = '/home/andre/Downloads'

# Bindings for normal mode
config.bind('B', ':buffer')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('M', 'hint links spawn mpv {hint-url}')
