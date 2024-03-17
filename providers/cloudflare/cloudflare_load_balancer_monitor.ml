(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_load_balancer_monitor__header = {
  header : string prop;  (** The header name. *)
  values : string prop list;  (** A list of values for the header. *)
}
[@@deriving yojson_of]
(** The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. *)

type cloudflare_load_balancer_monitor = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  allow_insecure : bool prop option; [@option]
      (** Do not validate the certificate when monitor use HTTPS.  Only valid if `type` is http or https. *)
  consecutive_down : float prop option; [@option]
      (** To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times. Defaults to `0`. *)
  consecutive_up : float prop option; [@option]
      (** To be marked healthy the monitored origin must pass this healthcheck N consecutive times. Defaults to `0`. *)
  description : string prop option; [@option]
      (** Free text description. *)
  expected_body : string prop option; [@option]
      (** A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. Only valid if `type` is http or https. *)
  expected_codes : string prop option; [@option]
      (** The expected HTTP response code or code range of the health check. Eg `2xx`. Only valid and required if `type` is http or https. *)
  follow_redirects : bool prop option; [@option]
      (** Follow redirects if returned by the origin. Only valid if `type` is http or https. *)
  id : string prop option; [@option]  (** id *)
  interval : float prop option; [@option]
      (** The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations. Defaults to `60`. *)
  method_ : string prop option; [@option] [@key "method"]
      (** The method to use for the health check. *)
  path : string prop option; [@option]
      (** The endpoint path to health check against. *)
  port : float prop option; [@option]
      (** The port number to use for the healthcheck, required when creating a TCP monitor. *)
  probe_zone : string prop option; [@option]
      (** Assign this monitor to emulate the specified zone while probing. Only valid if `type` is http or https. *)
  retries : float prop option; [@option]
      (** The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately. Defaults to `2`. *)
  timeout : float prop option; [@option]
      (** The timeout (in seconds) before marking the health check as failed. Defaults to `5`. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The protocol to use for the healthcheck. Available values: `http`, `https`, `tcp`, `udp_icmp`, `icmp_ping`, `smtp`. Defaults to `http`. *)
  header : cloudflare_load_balancer_monitor__header list;
}
[@@deriving yojson_of]
(** If Cloudflare's Load Balancing to load-balance across multiple
origin servers or data centers, you configure one of these Monitors
to actively check the availability of those servers over HTTP(S) or
TCP.
 *)

type t = {
  account_id : string prop;
  allow_insecure : bool prop;
  consecutive_down : float prop;
  consecutive_up : float prop;
  created_on : string prop;
  description : string prop;
  expected_body : string prop;
  expected_codes : string prop;
  follow_redirects : bool prop;
  id : string prop;
  interval : float prop;
  method_ : string prop;
  modified_on : string prop;
  path : string prop;
  port : float prop;
  probe_zone : string prop;
  retries : float prop;
  timeout : float prop;
  type_ : string prop;
}

let cloudflare_load_balancer_monitor ?allow_insecure
    ?consecutive_down ?consecutive_up ?description ?expected_body
    ?expected_codes ?follow_redirects ?id ?interval ?method_ ?path
    ?port ?probe_zone ?retries ?timeout ?type_ ~account_id ~header
    __resource_id =
  let __resource_type = "cloudflare_load_balancer_monitor" in
  let __resource =
    ({
       account_id;
       allow_insecure;
       consecutive_down;
       consecutive_up;
       description;
       expected_body;
       expected_codes;
       follow_redirects;
       id;
       interval;
       method_;
       path;
       port;
       probe_zone;
       retries;
       timeout;
       type_;
       header;
     }
      : cloudflare_load_balancer_monitor)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_load_balancer_monitor __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       allow_insecure =
         Prop.computed __resource_type __resource_id "allow_insecure";
       consecutive_down =
         Prop.computed __resource_type __resource_id
           "consecutive_down";
       consecutive_up =
         Prop.computed __resource_type __resource_id "consecutive_up";
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       description =
         Prop.computed __resource_type __resource_id "description";
       expected_body =
         Prop.computed __resource_type __resource_id "expected_body";
       expected_codes =
         Prop.computed __resource_type __resource_id "expected_codes";
       follow_redirects =
         Prop.computed __resource_type __resource_id
           "follow_redirects";
       id = Prop.computed __resource_type __resource_id "id";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       method_ = Prop.computed __resource_type __resource_id "method";
       modified_on =
         Prop.computed __resource_type __resource_id "modified_on";
       path = Prop.computed __resource_type __resource_id "path";
       port = Prop.computed __resource_type __resource_id "port";
       probe_zone =
         Prop.computed __resource_type __resource_id "probe_zone";
       retries =
         Prop.computed __resource_type __resource_id "retries";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
