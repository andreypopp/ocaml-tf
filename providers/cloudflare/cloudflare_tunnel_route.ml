(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_tunnel_route ?comment ?id ?virtual_network_id
    ~account_id ~network ~tunnel_id () : cloudflare_tunnel_route =
  { account_id; comment; id; network; tunnel_id; virtual_network_id }

type t = {
  account_id : string prop;
  comment : string prop;
  id : string prop;
  network : string prop;
  tunnel_id : string prop;
  virtual_network_id : string prop;
}

let make ?comment ?id ?virtual_network_id ~account_id ~network
    ~tunnel_id __id =
  let __type = "cloudflare_tunnel_route" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       comment = Prop.computed __type __id "comment";
       id = Prop.computed __type __id "id";
       network = Prop.computed __type __id "network";
       tunnel_id = Prop.computed __type __id "tunnel_id";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel_route
        (cloudflare_tunnel_route ?comment ?id ?virtual_network_id
           ~account_id ~network ~tunnel_id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?virtual_network_id ~account_id
    ~network ~tunnel_id __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?virtual_network_id ~account_id ~network
      ~tunnel_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
