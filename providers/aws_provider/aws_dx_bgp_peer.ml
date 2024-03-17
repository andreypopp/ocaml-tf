(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_bgp_peer__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_bgp_peer__timeouts *)

type aws_dx_bgp_peer = {
  address_family : string;  (** address_family *)
  bgp_asn : float;  (** bgp_asn *)
  virtual_interface_id : string;  (** virtual_interface_id *)
  timeouts : aws_dx_bgp_peer__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_bgp_peer *)

let aws_dx_bgp_peer ?timeouts ~address_family ~bgp_asn
    ~virtual_interface_id __resource_id =
  let __resource_type = "aws_dx_bgp_peer" in
  let __resource =
    { address_family; bgp_asn; virtual_interface_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_bgp_peer __resource);
  ()
