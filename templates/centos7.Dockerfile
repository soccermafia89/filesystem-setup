from centos:7

{% if http_proxy is defined %}
ENV http_proxy={{ http_proxy }}
ENV HTTP_PROXY={{ http_proxy }}
{% endif %}

{% if https_proxy is defined %}
ENV https_proxy={{ https_proxy }}
ENV HTTPS_PROXY={{ https_proxy }}
{% endif %}

{% if no_proxy is defined %}
ENV no_proxy={{ no_proxy }}
{% endif %}

RUN yum install -y vim util-linux-ng e2fsprogs
