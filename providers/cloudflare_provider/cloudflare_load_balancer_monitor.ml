(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_load_balancer_monitor__header = {
  header : string;  (** The header name. *)
  values : string list;  (** A list of values for the header. *)
}
[@@deriving yojson_of]
(** The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. *)

type cloudflare_load_balancer_monitor = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  allow_insecure : bool option; [@option]
      (** Do not validate the certificate when monitor use HTTPS.  Only valid if `type` is http or https. *)
  consecutive_down : float option; [@option]
      (** To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times. Defaults to `0`. *)
  consecutive_up : float option; [@option]
      (** To be marked healthy the monitored origin must pass this healthcheck N consecutive times. Defaults to `0`. *)
  description : string option; [@option]
      (** Free text description. *)
  expected_body : string option; [@option]
      (** A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. Only valid if `type` is http or https. *)
  expected_codes : string option; [@option]
      (** The expected HTTP response code or code range of the health check. Eg `2xx`. Only valid and required if `type` is http or https. *)
  follow_redirects : bool option; [@option]
      (** Follow redirects if returned by the origin. Only valid if `type` is http or https. *)
  interval : float option; [@option]
      (** The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations. Defaults to `60`. *)
  port : float option; [@option]
      (** The port number to use for the healthcheck, required when creating a TCP monitor. *)
  probe_zone : string option; [@option]
      (** Assign this monitor to emulate the specified zone while probing. Only valid if `type` is http or https. *)
  retries : float option; [@option]
      (** The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately. Defaults to `2`. *)
  timeout : float option; [@option]
      (** The timeout (in seconds) before marking the health check as failed. Defaults to `5`. *)
  type_ : string option; [@option] [@key "type"]
      (** The protocol to use for the healthcheck. Available values: `http`, `https`, `tcp`, `udp_icmp`, `icmp_ping`, `smtp`. Defaults to `http`. *)
  header : cloudflare_load_balancer_monitor__header list;
}
[@@deriving yojson_of]
(** If Cloudflare's Load Balancing to load-balance across multiple
origin servers or data centers, you configure one of these Monitors
to actively check the availability of those servers over HTTP(S) or
TCP.
 *)

let cloudflare_load_balancer_monitor ?allow_insecure
    ?consecutive_down ?consecutive_up ?description ?expected_body
    ?expected_codes ?follow_redirects ?interval ?port ?probe_zone
    ?retries ?timeout ?type_ ~account_id ~header __resource_id =
  let __resource_type = "cloudflare_load_balancer_monitor" in
  let __resource =
    {
      account_id;
      allow_insecure;
      consecutive_down;
      consecutive_up;
      description;
      expected_body;
      expected_codes;
      follow_redirects;
      interval;
      port;
      probe_zone;
      retries;
      timeout;
      type_;
      header;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_load_balancer_monitor __resource);
  ()