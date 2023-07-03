#!/bin/sh -e
# ESET PROTECT
# Copyright (c) 1992-2022 ESET, spol. s r.o. All Rights Reserved

cleanup_file="$(mktemp -q)"
finalize()
{
  set +e
  if test -f "$cleanup_file"
  then
    while read f
    do
      rm -f "$f"
    done < "$cleanup_file"
    rm -f "$cleanup_file"
  fi
}

trap 'finalize' HUP INT QUIT TERM EXIT

eraa_server_hostname="qw27th6m7d3ezj277kr5fh4jm4.a.ecaserver.eset.com"
eraa_server_port="443"
eraa_server_company_name="DEALTY INVEST / 301758"
eraa_peer_cert_b64="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"
eraa_peer_cert_pwd=""
eraa_ca_cert_b64="MIIFpDCCA4ygAwIBAgIIMUSW0eFkh/8wDQYJKoZIhvcNAQELBQAwaDELMAkGA1UEBhMCU0sxGDAWBgNVBAgTD1Nsb3ZhayBSZXB1YmxpYzETMBEGA1UEBxMKQnJhdGlzbGF2YTENMAsGA1UEChMERXNldDEbMBkGA1UEAxMSRVBDIEFnZW50IHByb3h5IENBMB4XDTIyMDYyMDAwMDAwMFoXDTMyMDYxOTIzNTk1OVowaDELMAkGA1UEBhMCU0sxGDAWBgNVBAgTD1Nsb3ZhayBSZXB1YmxpYzETMBEGA1UEBxMKQnJhdGlzbGF2YTENMAsGA1UEChMERXNldDEbMBkGA1UEAxMSRVBDIEFnZW50IHByb3h5IENBMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEApFyygZ31hn6s/K7+Lm/r3KP+P5Gn0pb5J6IR0F+KtBUiNE9nRn5PnVDdyj9uVd6BZIKcczoHebH/70GQUuOzprDtHhWUTNDZ7R4NfNz0u5cYn2mKPk9lJRPEcuvqKr+aGsCs1yMv226xd72ngJE/Z2MlGLGX5+kuO0HmQWRUK/SDtmcCvforHs7zE19PjXmZQnpW+bUFkLeHcHS4WtJ64CNkbuTHssK8nNDQoJXLZVKafLWCkAZ94vpZWDRG5AffdBDnKrSy+WOTI6dOJw8i+uJ7YtWconTJo9NRCcgTzCHujylXgqWkwm3f+Wh/h0u5KIJEzTPN/RTzP+/SWEDrYi7+wECXWv6kU3Ty3KkzPGsAt9ABmnvAUGShi8Heyhnes6E3IiUt3wko+LHVw9hFyXFjfqtgRtxvOTcX06zinpQbtl+d1Wm7mU/ORFIPffRec4B9YewF1VRCm4gT5vqFZbO7BUnuyKFeGr6Vxlgrgz0mPS0PAoATI500x9g8Md3Mmshc/6wLInMHgSh//n+aylnePRrTvLEJhcWgoDx57wZ7G5fTeHEFIRrcU3ez6PSKbodCBcjfWrGLkXNQzmIwhDxVRmo4DXLga6MzbYqU54zQVfk60CiFEvwwK8l7WBZ7XlqxRl8QmsIUGf278N8Hxe0qOs7fcZPvuVHyhS4WKxsCAwEAAaNSMFAwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUZ9DJSflsyGkpLas5Ll3dMzeMJSEwCwYDVR0PBAQDAgEGMBEGCWCGSAGG+EIBAQQEAwIABzANBgkqhkiG9w0BAQsFAAOCAgEAWrXSFAd4OmT0bxHj1q+zMROTxXalzfAfqncTGaTm2NiqL5be3WfgnQLjGOMX+VVC1YXDlI2xs2JAWD3myRT4u7g1Y320HmjWczaE36h8PrnL+M/LEIHem3bM7e6ZFGHzwN80D5bmM++qacrGnnSDXid/sVx2Vi5KKXOXcFB74Haef5mqVm9uNpjDuUO+7Zdip6xqieHOpYD7HIWCkq/bJXxyrPr9CY37KyVdeMoU8QuIzdlgn5l0yc8LNBXXv7pba+ykPirIWe1ZR0O0z5e0gAqUe0kz9fpiMmzWpaGS/4s8gt0oYX2Ahibc3Lgg179OOpUFOsz92TmPVQCnzseZCPirikCA7qUAmMFKqs+l+X6DdKIrL4ocHs5zFAL9fysdKpczKczAWpZXr9LtuY6WFDkcWhxm4kj1MXyte8UBBC4C1UX47Km5TlOQUApnp7LMXI3jlBB+2Lo3T9N2FhiQ5R2PoNdA+XONNaBb8E9mh83wOvA6+Me1Rb7bIO6q/dTULd41Jns3JQ8zy0H8rQrOSOREWfieW0Czd38ZRJoa7MRp6Z3aYAuqt8pJpOykVbKQY/OYh43pt5gfgFvIkI3CuoJvLPQ3bYKyBiJN8PYhFpOyLYOrOJqbd26x+QFORgiBdZo6u6Em31l3fVpiaMcSAD9Cny6VUEC2aYn00beB2Vc="
eraa_product_uuid=""
eraa_initial_sg_token=""
eraa_policy_data=""

arch=$(uname -m)
eraa_installer_url="http://repository.eset.com/v1/com/eset/apps/business/era/agent/v10/10.0.2130.0/agent_linux_i386.sh"
eraa_installer_checksum="ece63a8ba5510e39216c064b13c2a2e470563da3"

if $(echo "$arch" | grep -E "^(x86_64|amd64)$" 2>&1 > /dev/null)
then
    eraa_installer_url="http://repository.eset.com/v1/com/eset/apps/business/era/agent/v10/10.0.2130.0/agent_linux_x86_64.sh"
    eraa_installer_checksum="bb75560c430a9f1592c68d81ea85bbffad4566ae"
fi

echo "ESET Management Agent live installer script. Copyright © 1992-2022 ESET, spol. s r.o. - All rights reserved."

if test ! -z $eraa_server_company_name
then
  echo " * CompanyName: $eraa_server_company_name"
fi
echo " * Hostname: $eraa_server_hostname"
echo " * Port: $eraa_server_port"
echo " * Installer: $eraa_installer_url"
echo

if test -z $eraa_installer_url
then
  echo "No installer available for '$arch' arhitecture."
  exit 1
fi

local_cert_path="$(mktemp -q -u)"
echo $eraa_peer_cert_b64 | base64 -d > "$local_cert_path" && echo "$local_cert_path" >> "$cleanup_file"

if test -n "$eraa_ca_cert_b64"
then
  local_ca_path="$(mktemp -q -u)"
  echo $eraa_ca_cert_b64 | base64 -d > "$local_ca_path" && echo "$local_ca_path" >> "$cleanup_file"
fi


eraa_http_proxy_value=""

local_installer="$(dirname $0)"/"$(basename $eraa_installer_url)"

if $(echo "$eraa_installer_checksum  $local_installer" | shasum -c 2> /dev/null > /dev/null)
then
    echo "Verified local installer was found: '$local_installer'"
else
    local_installer="$(mktemp -q -u)"

    echo "Downloading ESET Management Agent installer..."

    if test -n "$eraa_http_proxy_value"
    then
      export use_proxy=yes
      export http_proxy="$eraa_http_proxy_value"
      (wget --connect-timeout 300 --no-check-certificate -O "$local_installer" "$eraa_installer_url" || wget --connect-timeout 300 --no-proxy --no-check-certificate -O "$local_installer" "$eraa_installer_url" || curl --fail --connect-timeout 300 -k "$eraa_installer_url" > "$local_installer") && echo "$local_installer" >> "$cleanup_file"
    else
      (wget --connect-timeout 300 --no-check-certificate -O "$local_installer" "$eraa_installer_url" || curl --fail --connect-timeout 300 -k "$eraa_installer_url" > "$local_installer") && echo "$local_installer" >> "$cleanup_file"
    fi

    if test ! -s "$local_installer"
    then
       echo "Failed to download installer file"
       exit 2
    fi

    echo -n "Checking integrity of installer script " && echo "$eraa_installer_checksum  $local_installer" | sha1sum -c
fi

chmod +x "$local_installer"

command -v sudo > /dev/null && usesudo="sudo -E" || usesudo=""

export _ERAAGENT_PEER_CERT_PASSWORD="$eraa_peer_cert_pwd"

echo
echo Running installer script $local_installer
echo

$usesudo /bin/sh "$local_installer"\
   --skip-license \
   --hostname "$eraa_server_hostname"\
   --port "$eraa_server_port"\
   --cert-path "$local_cert_path"\
   --cert-password "env:_ERAAGENT_PEER_CERT_PASSWORD"\
   --cert-password-is-base64\
   --initial-static-group "$eraa_initial_sg_token"\
   \
   --disable-imp-program\
   $(test -n "$local_ca_path" && echo --cert-auth-path "$local_ca_path")\
   $(test -n "$eraa_product_uuid" && echo --product-guid "$eraa_product_uuid")\
   $(test -n "$eraa_policy_data" && echo --custom-policy "$eraa_policy_data")
