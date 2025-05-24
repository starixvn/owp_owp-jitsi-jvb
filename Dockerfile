# Use the official Jitsi Videobridge image as base
FROM hub.nexdev.net/base/jitsi/jvb:jvb-2.3-232-g0bad55e1-1

COPY sip-communicator.properties /config/sip-communicator.properties

# Set environment variables
ENV JVB_BREWERY_MUC_COMPONENT=internal-muc.auth.meet.jitsi \
    JVB_AUTH_USER=jvb \
    JVB_AUTH_PASSWORD=1234aa \
    JVB_ENABLE_APIS=rest \
    JVB_NAT_HARVESTER_LOCAL_ADDRESS=10.18.200.131\
    JVB_NAT_HARVESTER_PUBLIC_ADDRESS=10.18.200.131\
    JVB_IP=10.18.200.131 \
	JVB_ADVERTISE_IP=10.18.200.131 \
	JVB_STUN_SERVERS=stun.l.google.com:19302 \
    XMPP_SERVER=nap_owp_jitsi_prosody_LOCAL \
    XMPP_DOMAIN=meet.jitsi \
    XMPP_AUTH_DOMAIN=auth.meet.jitsi \
    XMPP_MUC_DOMAIN=muc.meet.jitsi \
    XMPP_INTERNAL_MUC_DOMAIN=internal-muc.auth.meet.jitsi

EXPOSE 10000/udp
EXPOSE 10000/tcp
EXPOSE 8080