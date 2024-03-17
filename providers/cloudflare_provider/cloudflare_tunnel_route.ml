(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tunnel_route = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  comment : string prop option; [@option]
      (** Description of the tunnel route. *)
  id : string prop option; [@option]  (** id *)
  network : string prop;
      (** The IPv4 or IPv6 network that should use this tunnel route, in CIDR notation. *)
  tunnel_id : string prop;
      (** The ID of the tunnel that will service the tunnel route. *)
  virtual_network_id : string prop option; [@option]
      (** The ID of the virtual network for which this route is being added; uses the default virtual network of the account if none is provided. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare tunnel routes for Zero
Trust. Tunnel routes are used to direct IP traffic through
Cloudflare Tunnels.
 *)

type t = {
  account_id : string prop;
  comment : string prop;
  id : string prop;
  network : string prop;
  tunnel_id : string prop;
  virtual_network_id : string prop;
}

let cloudflare_tunnel_route ?comment ?id ?virtual_network_id
    ~account_id ~network ~tunnel_id __resource_id =
  let __resource_type = "cloudflare_tunnel_route" in
  let __resource =
    ({
       account_id;
       comment;
       id;
       network;
       tunnel_id;
       virtual_network_id;
     }
      : cloudflare_tunnel_route)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tunnel_route __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       id = Prop.computed __resource_type __resource_id "id";
       network =
         Prop.computed __resource_type __resource_id "network";
       tunnel_id =
         Prop.computed __resource_type __resource_id "tunnel_id";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
     }
      : t)
  in
  __resource_attributes
