(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_static_route = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  colo_names : string list option; [@option]
      (** List of Cloudflare colocation regions for this static route. *)
  colo_regions : string list option; [@option]
      (** List of Cloudflare colocation names for this static route. *)
  description : string option; [@option]
      (** Description of the static route. *)
  nexthop : string;
      (** The nexthop IP address where traffic will be routed to. *)
  prefix : string;  (** Your network prefix using CIDR notation. *)
  priority : float;  (** The priority for the static route. *)
  weight : float option; [@option]
      (** The optional weight for ECMP routes. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare static routes for Magic
Transit or Magic WAN. Static routes are used to route traffic
through GRE tunnels.
 *)

let cloudflare_static_route ?account_id ?colo_names ?colo_regions
    ?description ?weight ~nexthop ~prefix ~priority __resource_id =
  let __resource_type = "cloudflare_static_route" in
  let __resource =
    {
      account_id;
      colo_names;
      colo_regions;
      description;
      nexthop;
      prefix;
      priority;
      weight;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_static_route __resource);
  ()
