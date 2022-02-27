from grafana/k6

ADD script.js script.js
ARG VUS
ENV VUS=${VUS}
ARG TIME
ENV TIME=${TIME}
ARG URL_VAR
ENV URL_VAR="URL=${URL}"

ENTRYPOINT k6 run --vus ${VUS} --duration ${TIME} -e ${URL_VAR} script.js
