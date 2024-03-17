(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_tunnel_virtual_network = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  comment : string option; [@option]
      (** Description of the tunnel virtual network. *)
  is_default_network : bool option; [@option]
      (** Whether this virtual network is the default one for the account. This means IP Routes belong to this virtual network and Teams Clients in the account route through this virtual network, unless specified otherwise for each case. *)
  name : string;
      (** A user-friendly name chosen when the virtual network is created. *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare tunnel virtual networks
for Zero Trust. Tunnel virtual networks are used for segregation of
Tunnel IP Routes via Virtualized Networks to handle overlapping
private IPs in your origins.
 *)

let cloudflare_tunnel_virtual_network ?comment ?is_default_network
    ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_tunnel_virtual_network" in
  let __resource =
    { account_id; comment; is_default_network; name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tunnel_virtual_network __resource);
  ()
