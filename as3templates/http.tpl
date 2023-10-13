{
   "class": "AS3",
   "action": "deploy",
   "persist": true,
   "declaration": {
      "class": "ADC",
      "schemaVersion": "3.0.0",
      "id": "${DESCRIPTION}",
      "label": "${DESCRIPTION}",
      "remark": "${DESCRIPTION}",
      "${TENANT}": {
         "class": "Tenant",
         "${DESCRIPTION}": {
            "class": "Application",
            "template": "http",
            "serviceMain": {
               "class": "Service_HTTP",
               "virtualAddresses": [
                  "${VIP_ADDRESS}"
               ],
               "pool": "${POOL_NAME}",
            },
            "${POOL_NAME}": {
               "class": "Pool",
               "loadBalancingMode": "${LOADBALANCEMODE}",
               "monitors": [
                  "${MONITOR}"
               ],
            "members": [{
               "servicePort": ${POOLMEMBERS_PORT},
               "shareNodes": true,
               "serverAddresses": ${MY_POOLMEMBERS}
            }]
            }
         }
      }
   }
}