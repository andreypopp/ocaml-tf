(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tunnel_route = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  comment : string option; [@option]
      (** Description of the tunnel route. *)
  network : string;
      (** The IPv4 or IPv6 network that should use this tunnel route, in CIDR notation. *)
  tunnel_id : string;
      (** The ID of the tunnel that will service the tunnel route. *)
  virtual_network_id : string option; [@option]
      (** The ID of the virtual network for which this route is being added; uses the default virtual network of the account if none is provided. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare tunnel routes for Zero
Trust. Tunnel routes are used to direct IP traffic through
Cloudflare Tunnels.
 *)

let cloudflare_tunnel_route ?comment ?virtual_network_id ~account_id
    ~network ~tunnel_id __resource_id =
  let __resource_type = "cloudflare_tunnel_route" in
  let __resource =
    { account_id; comment; network; tunnel_id; virtual_network_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tunnel_route __resource);
  ()
