(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_bgp_peer__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_bgp_peer__timeouts *)

type aws_dx_bgp_peer = {
  address_family : string prop;  (** address_family *)
  amazon_address : string prop option; [@option]
      (** amazon_address *)
  bgp_asn : float prop;  (** bgp_asn *)
  bgp_auth_key : string prop option; [@option]  (** bgp_auth_key *)
  customer_address : string prop option; [@option]
      (** customer_address *)
  id : string prop option; [@option]  (** id *)
  virtual_interface_id : string prop;  (** virtual_interface_id *)
  timeouts : aws_dx_bgp_peer__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_bgp_peer *)

type t = {
  address_family : string prop;
  amazon_address : string prop;
  aws_device : string prop;
  bgp_asn : float prop;
  bgp_auth_key : string prop;
  bgp_peer_id : string prop;
  bgp_status : string prop;
  customer_address : string prop;
  id : string prop;
  virtual_interface_id : string prop;
}

let aws_dx_bgp_peer ?amazon_address ?bgp_auth_key ?customer_address
    ?id ?timeouts ~address_family ~bgp_asn ~virtual_interface_id
    __resource_id =
  let __resource_type = "aws_dx_bgp_peer" in
  let __resource =
    ({
       address_family;
       amazon_address;
       bgp_asn;
       bgp_auth_key;
       customer_address;
       id;
       virtual_interface_id;
       timeouts;
     }
      : aws_dx_bgp_peer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_bgp_peer __resource);
  let __resource_attributes =
    ({
       address_family =
         Prop.computed __resource_type __resource_id "address_family";
       amazon_address =
         Prop.computed __resource_type __resource_id "amazon_address";
       aws_device =
         Prop.computed __resource_type __resource_id "aws_device";
       bgp_asn =
         Prop.computed __resource_type __resource_id "bgp_asn";
       bgp_auth_key =
         Prop.computed __resource_type __resource_id "bgp_auth_key";
       bgp_peer_id =
         Prop.computed __resource_type __resource_id "bgp_peer_id";
       bgp_status =
         Prop.computed __resource_type __resource_id "bgp_status";
       customer_address =
         Prop.computed __resource_type __resource_id
           "customer_address";
       id = Prop.computed __resource_type __resource_id "id";
       virtual_interface_id =
         Prop.computed __resource_type __resource_id
           "virtual_interface_id";
     }
      : t)
  in
  __resource_attributes
