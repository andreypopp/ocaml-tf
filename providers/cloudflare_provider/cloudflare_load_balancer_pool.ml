(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_load_balancer_pool__load_shedding = {
  default_percent : float prop option; [@option]
      (** Percent of traffic to shed 0 - 100. Defaults to `0`. *)
  default_policy : string prop option; [@option]
      (** Method of shedding traffic. Available values: ``, `hash`, `random`. Defaults to ``. *)
  session_percent : float prop option; [@option]
      (** Percent of session traffic to shed 0 - 100. Defaults to `0`. *)
  session_policy : string prop option; [@option]
      (** Method of shedding traffic. Available values: ``, `hash`. Defaults to ``. *)
}
[@@deriving yojson_of]
(** Setting for controlling load shedding for this pool. *)

type cloudflare_load_balancer_pool__origin_steering = {
  policy : string prop option; [@option]
      (** Origin steering policy to be used. Value `random` selects an origin randomly. Value `hash` selects an origin by computing a hash over the CF-Connecting-IP address. Value `least_outstanding_requests` selects an origin by taking into consideration origin weights, as well as each origin's number of outstanding requests. Origins with more pending requests are weighted proportionately less relative to others. Value `least_connections` selects an origin by taking into consideration origin weights, as well as each origin's number of open connections. Origins with more open connections are weighted proportionately less relative to others. Supported for HTTP/1 and HTTP/2 connections. Available values: ``, `hash`, `random`, `least_outstanding_requests`, `least_connections`. Defaults to `random`. *)
}
[@@deriving yojson_of]
(** Set an origin steering policy to control origin selection within a pool. *)

type cloudflare_load_balancer_pool__origins__header = {
  header : string prop;  (** HTTP Header name. *)
  values : string prop list;  (** Values for the HTTP headers. *)
}
[@@deriving yojson_of]
(** HTTP request headers. *)

type cloudflare_load_balancer_pool__origins = {
  address : string prop;
      (** The IP address (IPv4 or IPv6) of the origin, or the publicly addressable hostname. *)
  enabled : bool prop option; [@option]
      (** Whether this origin is enabled. Disabled origins will not receive traffic and are excluded from health checks. Defaults to `true`. *)
  name : string prop;
      (** A human-identifiable name for the origin. *)
  weight : float prop option; [@option]
      (** The weight (0.01 - 1.00) of this origin, relative to other origins in the pool. Equal values mean equal weighting. A weight of 0 means traffic will not be sent to this origin, but health is still checked. When [`origin_steering.policy=least_outstanding_requests`](#policy), weight is used to scale the origin's outstanding requests. When [`origin_steering.policy=least_connections`](#policy), weight is used to scale the origin's open connections. Defaults to `1`. *)
  header : cloudflare_load_balancer_pool__origins__header list;
}
[@@deriving yojson_of]
(** The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy. *)

type cloudflare_load_balancer_pool = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  check_regions : string prop list option; [@option]
      (** A list of regions (specified by region code) from which to run health checks. Empty means every Cloudflare data center (the default), but requires an Enterprise plan. Region codes can be found [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api). *)
  description : string prop option; [@option]
      (** Free text description. *)
  enabled : bool prop option; [@option]
      (** Whether to enable (the default) this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any). Defaults to `true`. *)
  id : string prop option; [@option]  (** id *)
  latitude : float prop option; [@option]
      (** The latitude this pool is physically located at; used for proximity steering. *)
  longitude : float prop option; [@option]
      (** The longitude this pool is physically located at; used for proximity steering. *)
  minimum_origins : float prop option; [@option]
      (** The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and we will failover to the next available pool. Defaults to `1`. *)
  monitor : string prop option; [@option]
      (** The ID of the Monitor to use for health checking origins within this pool. *)
  name : string prop;  (** A short name (tag) for the pool. *)
  notification_email : string prop option; [@option]
      (** The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list. *)
  load_shedding : cloudflare_load_balancer_pool__load_shedding list;
  origin_steering :
    cloudflare_load_balancer_pool__origin_steering list;
  origins : cloudflare_load_balancer_pool__origins list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Load Balancer pool resource. This provides a
pool of origins that can be used by a Cloudflare Load Balancer.
 *)

let cloudflare_load_balancer_pool ?check_regions ?description
    ?enabled ?id ?latitude ?longitude ?minimum_origins ?monitor
    ?notification_email ~account_id ~name ~load_shedding
    ~origin_steering ~origins __resource_id =
  let __resource_type = "cloudflare_load_balancer_pool" in
  let __resource =
    {
      account_id;
      check_regions;
      description;
      enabled;
      id;
      latitude;
      longitude;
      minimum_origins;
      monitor;
      name;
      notification_email;
      load_shedding;
      origin_steering;
      origins;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_load_balancer_pool __resource);
  ()
