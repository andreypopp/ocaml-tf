(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tunnel_virtual_network = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  comment : string prop option; [@option]
      (** Description of the tunnel virtual network. *)
  id : string prop option; [@option]  (** id *)
  is_default_network : bool prop option; [@option]
      (** Whether this virtual network is the default one for the account. This means IP Routes belong to this virtual network and Teams Clients in the account route through this virtual network, unless specified otherwise for each case. *)
  name : string prop;
      (** A user-friendly name chosen when the virtual network is created. *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare tunnel virtual networks
for Zero Trust. Tunnel virtual networks are used for segregation of
Tunnel IP Routes via Virtualized Networks to handle overlapping
private IPs in your origins.
 *)

let cloudflare_tunnel_virtual_network ?comment ?id
    ?is_default_network ~account_id ~name () :
    cloudflare_tunnel_virtual_network =
  { account_id; comment; id; is_default_network; name }

type t = {
  account_id : string prop;
  comment : string prop;
  id : string prop;
  is_default_network : bool prop;
  name : string prop;
}

let register ?tf_module ?comment ?id ?is_default_network ~account_id
    ~name __resource_id =
  let __resource_type = "cloudflare_tunnel_virtual_network" in
  let __resource =
    cloudflare_tunnel_virtual_network ?comment ?id
      ?is_default_network ~account_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tunnel_virtual_network __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       id = Prop.computed __resource_type __resource_id "id";
       is_default_network =
         Prop.computed __resource_type __resource_id
           "is_default_network";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
