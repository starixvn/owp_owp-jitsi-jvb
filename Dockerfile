# Use the official Jitsi Videobridge image as base
FROM hub.nexdev.net/base/jitsi/jvb:jvb-2.3-232-g0bad55e1-1

# Optional: Set environment variables
ENV JVB_BREWERY_MUC_COMPONENT=internal-muc.auth.meet.jitsi \
JVB_AUTH_USER=jvb \
JVB_AUTH_PASSWORD=1234aa \
XMPP_SERVER=nap_owp_jitsi_prosody_LOCAL

EXPOSE 10000/udp
EXPOSE 4443/tcp
EXPOSE 8080/tcp
