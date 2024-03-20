(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_static_route = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  colo_names : string prop list option; [@option]
      (** List of Cloudflare colocation regions for this static route. *)
  colo_regions : string prop list option; [@option]
      (** List of Cloudflare colocation names for this static route. *)
  description : string prop option; [@option]
      (** Description of the static route. *)
  id : string prop option; [@option]  (** id *)
  nexthop : string prop;
      (** The nexthop IP address where traffic will be routed to. *)
  prefix : string prop;
      (** Your network prefix using CIDR notation. *)
  priority : float prop;  (** The priority for the static route. *)
  weight : float prop option; [@option]
      (** The optional weight for ECMP routes. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare static routes for Magic
Transit or Magic WAN. Static routes are used to route traffic
through GRE tunnels.
 *)

let cloudflare_static_route ?account_id ?colo_names ?colo_regions
    ?description ?id ?weight ~nexthop ~prefix ~priority () :
    cloudflare_static_route =
  {
    account_id;
    colo_names;
    colo_regions;
    description;
    id;
    nexthop;
    prefix;
    priority;
    weight;
  }

type t = {
  account_id : string prop;
  colo_names : string list prop;
  colo_regions : string list prop;
  description : string prop;
  id : string prop;
  nexthop : string prop;
  prefix : string prop;
  priority : float prop;
  weight : float prop;
}

let make ?account_id ?colo_names ?colo_regions ?description ?id
    ?weight ~nexthop ~prefix ~priority __id =
  let __type = "cloudflare_static_route" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       colo_names = Prop.computed __type __id "colo_names";
       colo_regions = Prop.computed __type __id "colo_regions";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       nexthop = Prop.computed __type __id "nexthop";
       prefix = Prop.computed __type __id "prefix";
       priority = Prop.computed __type __id "priority";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_static_route
        (cloudflare_static_route ?account_id ?colo_names
           ?colo_regions ?description ?id ?weight ~nexthop ~prefix
           ~priority ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?colo_names ?colo_regions
    ?description ?id ?weight ~nexthop ~prefix ~priority __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?colo_names ?colo_regions ?description ?id
      ?weight ~nexthop ~prefix ~priority __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
