.PHONY: s_client
s_client:
	openssl s_client -connect localhost:2525 -CAfile $(CURDIR)/certs/ca_certificate.pem -cert $(CURDIR)/certs/client_rabbitmq-users-mis07NMKoXY.local_certificate.pem -key $(CURDIR)/certs/client_rabbitmq-users-mis07NMKoXY.local_key.pem -verify_hostname rabbitmq-users-mis07NMKoXY.local -verify_depth 8
