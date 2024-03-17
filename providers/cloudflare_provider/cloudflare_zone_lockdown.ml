(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_lockdown__configurations = {
  target : string prop;
      (** The request property to target. Available values: `ip`, `ip_range`. *)
  value : string prop;
      (** The value to target. Depends on target's type. IP addresses should just be standard IPv4/IPv6 notation i.e. `192.0.2.1` or `2001:db8::/32` and IP ranges in CIDR format i.e. `192.0.2.0/24`. *)
}
[@@deriving yojson_of]
(** A list of IP addresses or IP ranges to match the request against specified in target, value pairs. *)

type cloudflare_zone_lockdown = {
  description : string prop option; [@option]
      (** A description about the lockdown entry. Typically used as a reminder or explanation for the lockdown. *)
  id : string prop option; [@option]  (** id *)
  paused : bool prop option; [@option]
      (** Boolean of whether this zone lockdown is currently paused. Defaults to `false`. *)
  priority : float prop option; [@option]  (** priority *)
  urls : string prop list;
      (** A list of simple wildcard patterns to match requests against. The order of the urls is unimportant. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  configurations : cloudflare_zone_lockdown__configurations list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone Lockdown resource. Zone Lockdown allows
you to define one or more URLs (with wildcard matching on the domain
or path) that will only permit access if the request originates
from an IP address that matches a safelist of one or more IP
addresses and/or IP ranges.
 *)

let cloudflare_zone_lockdown ?description ?id ?paused ?priority ~urls
    ~zone_id ~configurations __resource_id =
  let __resource_type = "cloudflare_zone_lockdown" in
  let __resource =
    {
      description;
      id;
      paused;
      priority;
      urls;
      zone_id;
      configurations;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_lockdown __resource);
  ()
