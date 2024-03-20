(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configurations = {
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
  configurations : configurations list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone Lockdown resource. Zone Lockdown allows
you to define one or more URLs (with wildcard matching on the domain
or path) that will only permit access if the request originates
from an IP address that matches a safelist of one or more IP
addresses and/or IP ranges.
 *)

let configurations ~target ~value () : configurations =
  { target; value }

let cloudflare_zone_lockdown ?description ?id ?paused ?priority ~urls
    ~zone_id ~configurations () : cloudflare_zone_lockdown =
  {
    description;
    id;
    paused;
    priority;
    urls;
    zone_id;
    configurations;
  }

type t = {
  description : string prop;
  id : string prop;
  paused : bool prop;
  priority : float prop;
  urls : string list prop;
  zone_id : string prop;
}

let make ?description ?id ?paused ?priority ~urls ~zone_id
    ~configurations __id =
  let __type = "cloudflare_zone_lockdown" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       paused = Prop.computed __type __id "paused";
       priority = Prop.computed __type __id "priority";
       urls = Prop.computed __type __id "urls";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_lockdown
        (cloudflare_zone_lockdown ?description ?id ?paused ?priority
           ~urls ~zone_id ~configurations ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?paused ?priority ~urls
    ~zone_id ~configurations __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?paused ?priority ~urls ~zone_id
      ~configurations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
