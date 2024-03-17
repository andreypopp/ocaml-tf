(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dx_hosted_transit_virtual_interface__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_transit_virtual_interface__timeouts *)

type aws_dx_hosted_transit_virtual_interface = {
  address_family : string;  (** address_family *)
  bgp_asn : float;  (** bgp_asn *)
  connection_id : string;  (** connection_id *)
  mtu : float option; [@option]  (** mtu *)
  name : string;  (** name *)
  owner_account_id : string;  (** owner_account_id *)
  vlan : float;  (** vlan *)
  timeouts : aws_dx_hosted_transit_virtual_interface__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_hosted_transit_virtual_interface *)

let aws_dx_hosted_transit_virtual_interface ?mtu ?timeouts
    ~address_family ~bgp_asn ~connection_id ~name ~owner_account_id
    ~vlan __resource_id =
  let __resource_type = "aws_dx_hosted_transit_virtual_interface" in
  let __resource =
    {
      address_family;
      bgp_asn;
      connection_id;
      mtu;
      name;
      owner_account_id;
      vlan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_transit_virtual_interface __resource);
  ()
