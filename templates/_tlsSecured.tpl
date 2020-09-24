{{- define "tlsSecured.env.var" -}}
- name: OAUTH2_PROXY_TLS_CERT_FILE
  value: /etc/x509/https/tls.crt
- name: OAUTH2_PROXY_TLS_KEY_FILE
  value: /etc/x509/https/tls.key
- name: OAUTH2_PROXY_HTTPS_ADDRESS
  value: '0.0.0.0:8443'
- name: OAUTH2_PROXY_SSL_UPSTREAM_INSECURE_SKIP_VERIFY
  value: 'true'
{{- end -}}
{{- define "tlsSecured.container.volumeMount" -}}
volumeMounts:
  - mountPath: /etc/x509/https
    name: oauth2-proxy-certificate
{{- end -}}
{{- define "tlsSecured.template.volumeMount" -}}
volumes:
  - name: oauth2-proxy-certificate
    secret:
      defaultMode: 420
      secretName: oauth2proxy
{{- end -}}