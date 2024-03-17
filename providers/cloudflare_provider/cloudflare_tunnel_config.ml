(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tunnel_config__config__ingress_rule__origin_request__access = {
  aud_tag : string list option; [@option]
      (** Audience tags of the access rule. *)
  required : bool option; [@option]
      (** Whether the access rule is required. *)
  team_name : string option; [@option]
      (** Name of the team to which the access rule applies. *)
}
[@@deriving yojson_of]
(** Access rules for the ingress service. *)

type cloudflare_tunnel_config__config__ingress_rule__origin_request__ip_rules = {
  allow : bool option; [@option]
      (** Whether to allow the IP prefix. *)
  ports : float list option; [@option]
      (** Ports to use within the IP rule. *)
  prefix : string option; [@option]  (** IP rule prefix. *)
}
[@@deriving yojson_of]
(** IP rules for the proxy service. *)

type cloudflare_tunnel_config__config__ingress_rule__origin_request = {
  bastion_mode : bool option; [@option]  (** Runs as jump host. *)
  ca_pool : string option; [@option]
      (** Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare. Defaults to ``. *)
  connect_timeout : string option; [@option]
      (** Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by `tlsTimeout`. Defaults to `30s`. *)
  disable_chunked_encoding : bool option; [@option]
      (** Disables chunked transfer encoding. Useful if you are running a Web Server Gateway Interface (WSGI) server. Defaults to `false`. *)
  http2_origin : bool option; [@option]
      (** Enables HTTP/2 support for the origin connection. Defaults to `false`. *)
  http_host_header : string option; [@option]
      (** Sets the HTTP Host header on requests sent to the local service. Defaults to ``. *)
  keep_alive_connections : float option; [@option]
      (** Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections. Defaults to `100`. *)
  keep_alive_timeout : string option; [@option]
      (** Timeout after which an idle keepalive connection can be discarded. Defaults to `1m30s`. *)
  no_happy_eyeballs : bool option; [@option]
      (** Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols. Defaults to `false`. *)
  no_tls_verify : bool option; [@option]
      (** Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted. Defaults to `false`. *)
  origin_server_name : string option; [@option]
      (** Hostname that cloudflared should expect from your origin server certificate. Defaults to ``. *)
  proxy_address : string option; [@option]
      (** cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen address for that proxy. Defaults to `127.0.0.1`. *)
  proxy_port : float option; [@option]
      (** cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen port for that proxy. If set to zero, an unused port will randomly be chosen. Defaults to `0`. *)
  proxy_type : string option; [@option]
      (** cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Available values: ``, `socks`. Defaults to ``. *)
  tcp_keep_alive : string option; [@option]
      (** The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server. Defaults to `30s`. *)
  tls_timeout : string option; [@option]
      (** Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server. Defaults to `10s`. *)
  access :
    cloudflare_tunnel_config__config__ingress_rule__origin_request__access
    list;
  ip_rules :
    cloudflare_tunnel_config__config__ingress_rule__origin_request__ip_rules
    list;
}
[@@deriving yojson_of]
(** cloudflare_tunnel_config__config__ingress_rule__origin_request *)

type cloudflare_tunnel_config__config__ingress_rule = {
  hostname : string option; [@option]
      (** Hostname to match the incoming request with. If the hostname matches, the request will be sent to the service. *)
  path : string option; [@option]
      (** Path of the incoming request. If the path matches, the request will be sent to the local service. *)
  service : string;
      (** Name of the service to which the request will be sent. *)
  origin_request :
    cloudflare_tunnel_config__config__ingress_rule__origin_request
    list;
}
[@@deriving yojson_of]
(** Each incoming request received by cloudflared causes cloudflared to send a request to a local service. This section configures the rules that determine which requests are sent to which local services. [Read more](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide/local/local-management/ingress/). *)

type cloudflare_tunnel_config__config__origin_request__access = {
  aud_tag : string list option; [@option]
      (** Audience tags of the access rule. *)
  required : bool option; [@option]
      (** Whether the access rule is required. *)
  team_name : string option; [@option]
      (** Name of the team to which the access rule applies. *)
}
[@@deriving yojson_of]
(** Access rules for the ingress service. *)

type cloudflare_tunnel_config__config__origin_request__ip_rules = {
  allow : bool option; [@option]
      (** Whether to allow the IP prefix. *)
  ports : float list option; [@option]
      (** Ports to use within the IP rule. *)
  prefix : string option; [@option]  (** IP rule prefix. *)
}
[@@deriving yojson_of]
(** IP rules for the proxy service. *)

type cloudflare_tunnel_config__config__origin_request = {
  bastion_mode : bool option; [@option]  (** Runs as jump host. *)
  ca_pool : string option; [@option]
      (** Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare. Defaults to ``. *)
  connect_timeout : string option; [@option]
      (** Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by `tlsTimeout`. Defaults to `30s`. *)
  disable_chunked_encoding : bool option; [@option]
      (** Disables chunked transfer encoding. Useful if you are running a Web Server Gateway Interface (WSGI) server. Defaults to `false`. *)
  http2_origin : bool option; [@option]
      (** Enables HTTP/2 support for the origin connection. Defaults to `false`. *)
  http_host_header : string option; [@option]
      (** Sets the HTTP Host header on requests sent to the local service. Defaults to ``. *)
  keep_alive_connections : float option; [@option]
      (** Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections. Defaults to `100`. *)
  keep_alive_timeout : string option; [@option]
      (** Timeout after which an idle keepalive connection can be discarded. Defaults to `1m30s`. *)
  no_happy_eyeballs : bool option; [@option]
      (** Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols. Defaults to `false`. *)
  no_tls_verify : bool option; [@option]
      (** Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted. Defaults to `false`. *)
  origin_server_name : string option; [@option]
      (** Hostname that cloudflared should expect from your origin server certificate. Defaults to ``. *)
  proxy_address : string option; [@option]
      (** cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen address for that proxy. Defaults to `127.0.0.1`. *)
  proxy_port : float option; [@option]
      (** cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen port for that proxy. If set to zero, an unused port will randomly be chosen. Defaults to `0`. *)
  proxy_type : string option; [@option]
      (** cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Available values: ``, `socks`. Defaults to ``. *)
  tcp_keep_alive : string option; [@option]
      (** The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server. Defaults to `30s`. *)
  tls_timeout : string option; [@option]
      (** Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server. Defaults to `10s`. *)
  access :
    cloudflare_tunnel_config__config__origin_request__access list;
  ip_rules :
    cloudflare_tunnel_config__config__origin_request__ip_rules list;
}
[@@deriving yojson_of]
(** cloudflare_tunnel_config__config__origin_request *)

type cloudflare_tunnel_config__config__warp_routing = {
  enabled : bool option; [@option]
      (** Whether WARP routing is enabled. *)
}
[@@deriving yojson_of]
(** If you're exposing a [private network](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/private-net/), you need to add the `warp-routing` key and set it to `true`. *)

type cloudflare_tunnel_config__config = {
  ingress_rule : cloudflare_tunnel_config__config__ingress_rule list;
  origin_request :
    cloudflare_tunnel_config__config__origin_request list;
  warp_routing : cloudflare_tunnel_config__config__warp_routing list;
}
[@@deriving yojson_of]
(** Configuration block for Tunnel Configuration. *)

type cloudflare_tunnel_config = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  id : string option; [@option]  (** id *)
  tunnel_id : string;
      (** Identifier of the Tunnel to target for this configuration. *)
  config : cloudflare_tunnel_config__config list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Tunnel configuration resource.
 *)

let cloudflare_tunnel_config ?id ~account_id ~tunnel_id ~config
    __resource_id =
  let __resource_type = "cloudflare_tunnel_config" in
  let __resource = { account_id; id; tunnel_id; config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tunnel_config __resource);
  ()
