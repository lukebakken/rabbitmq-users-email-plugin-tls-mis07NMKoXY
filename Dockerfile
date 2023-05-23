FROM rabbitmq:3.11.16-management

COPY --chown=rabbitmq:rabbitmq --chmod=0400 erlang.cookie /var/lib/rabbitmq/.erlang.cookie
COPY --chown=rabbitmq:rabbitmq --chmod=0400 certs/*.pem /etc/rabbitmq/
COPY --chown=rabbitmq:rabbitmq enabled_plugins /etc/rabbitmq/
COPY --chown=rabbitmq:rabbitmq rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY --chown=rabbitmq:rabbitmq advanced.config /etc/rabbitmq/advanced.config
COPY --chown=rabbitmq:rabbitmq eiconv-1.0.0 /opt/rabbitmq/plugins/eiconv-1.0.0/
COPY --chown=rabbitmq:rabbitmq gen_smtp-1.2.0 /opt/rabbitmq/plugins/gen_smtp-1.2.0/
COPY --chown=rabbitmq:rabbitmq rabbitmq_email-1.1.1 /opt/rabbitmq/plugins/rabbitmq_email-1.1.1/

EXPOSE 2525 4369 5671 5672 15691 15692 25672 35672-35682
