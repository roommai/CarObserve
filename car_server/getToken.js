//获取连接百度接口所需的token
var https = require('https');
var qs = require('querystring');

const param = qs.stringify({
    'grant_type': 'client_credentials',
    'client_id': 'QlgnSZT9I2HrSTqqqRF2OBiP',
    'client_secret': 'dD6GWqWFxPaDx1TCGw8UgazrRvYeYNKX'
});

https.get(
    {
        hostname: 'aip.baidubce.com',
        path: '/oauth/2.0/token?' + param,
        agent: false
    },
    function (res) {
        res.pipe(process.stdout);
    }
);