(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_spectrum_application__dns = {
  name : string;
      (** The name of the DNS record associated with the application. *)
  type_ : string; [@key "type"]
      (** The type of DNS record associated with the application. *)
}
[@@deriving yojson_of]
(** The name and type of DNS record for the Spectrum application. *)

type cloudflare_spectrum_application__edge_ips = {
  connectivity : string option; [@option]
      (** The IP versions supported for inbound connections on Spectrum anycast IPs. Required when `type` is not `static`. Available values: `all`, `ipv4`, `ipv6`. *)
  ips : string list option; [@option]
      (** The collection of customer owned IPs to broadcast via anycast for this hostname and application. Requires [Bring Your Own IP](https://developers.cloudflare.com/spectrum/getting-started/byoip/) provisioned. *)
  type_ : string; [@key "type"]
      (** The type of edge IP configuration specified. Available values: `dynamic`, `static`. *)
}
[@@deriving yojson_of]
(** The anycast edge IP configuration for the hostname of this application. *)

type cloudflare_spectrum_application__origin_dns = {
  name : string;  (** Fully qualified domain name of the origin. *)
}
[@@deriving yojson_of]
(** A destination DNS addresses to the origin. *)

type cloudflare_spectrum_application__origin_port_range = {
  end_ : float; [@key "end"]
      (** Upper bound of the origin port range. *)
  start : float;  (** Lower bound of the origin port range. *)
}
[@@deriving yojson_of]
(** Origin port range to proxy traffice to. When using a range, the protocol field must also specify a range, e.g. `tcp/22-23`. Conflicts with `origin_port`. *)

type cloudflare_spectrum_application = {
  origin_direct : string list option; [@option]
      (** A list of destination addresses to the origin. e.g. `tcp://192.0.2.1:22`. *)
  origin_port : float option; [@option]
      (** Origin port to proxy traffice to. Conflicts with `origin_port_range`. *)
  protocol : string;
      (** The port configuration at Cloudflare's edge. e.g. `tcp/22`. *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
  dns : cloudflare_spectrum_application__dns list;
  edge_ips : cloudflare_spectrum_application__edge_ips list;
  origin_dns : cloudflare_spectrum_application__origin_dns list;
  origin_port_range :
    cloudflare_spectrum_application__origin_port_range list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Spectrum Application. You can extend the power
of Cloudflare's DDoS, TLS, and IP Firewall to your other TCP-based
services.
 *)

let cloudflare_spectrum_application ?origin_direct ?origin_port
    ~protocol ~zone_id ~dns ~edge_ips ~origin_dns ~origin_port_range
    __resource_id =
  let __resource_type = "cloudflare_spectrum_application" in
  let __resource =
    {
      origin_direct;
      origin_port;
      protocol;
      zone_id;
      dns;
      edge_ips;
      origin_dns;
      origin_port_range;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_spectrum_application __resource);
  ()
