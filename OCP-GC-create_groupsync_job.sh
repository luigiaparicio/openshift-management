oc process -f scheduledjob-ad-group-sync.yml \
-p NAMESPACE="cronjobs" \
-p LDAP_URL="ldap://gcpadc01.gcgestion.com.ar:389" \
-p LDAP_BIND_DN="cn=Openshift Service,ou=Cuentas de servicio,dc=gcgestion,dc=com,dc=ar" \
-p LDAP_BIND_PASSWORD="MuOTksp5" \
-p LDAP_GROUPS_SEARCH_BASE="OU=OpenShift,OU=Grupos,DC=gcgestion,DC=com,DC=ar" \
-p LDAP_GROUPS_FILTER="(&(objectclass=group)(memberOf=CN=GC-OpenshiftGroup,OU=OpenShift,OU=Grupos,DC=gcgestion,DC=com,DC=ar))" \
-p LDAP_USERS_SEARCH_BASE="dc=gcgestion,dc=com,dc=ar" \
| oc create -f-
