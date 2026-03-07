const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Contacts',
  protocol: 'icloud-contacts',
  icloudUrl: 'https://www.icloud.com/contacts',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
