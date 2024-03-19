(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_transit_gateway_connect_peer = {
  bgp_asn : string prop option; [@option]  (** bgp_asn *)
  id : string prop option; [@option]  (** id *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_address : string prop option; [@option]
      (** transit_gateway_address *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect_peer *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id () :
    aws_ec2_transit_gateway_connect_peer =
  {
    bgp_asn;
    id;
    inside_cidr_blocks;
    peer_address;
    tags;
    tags_all;
    transit_gateway_address;
    transit_gateway_attachment_id;
    timeouts;
  }

type t = {
  arn : string prop;
  bgp_asn : string prop;
  bgp_peer_address : string prop;
  bgp_transit_gateway_addresses : string list prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_address : string prop;
  transit_gateway_attachment_id : string prop;
}

let register ?tf_module ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_connect_peer" in
  let __resource =
    aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags ?tags_all
      ?transit_gateway_address ?timeouts ~inside_cidr_blocks
      ~peer_address ~transit_gateway_attachment_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_connect_peer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bgp_asn =
         Prop.computed __resource_type __resource_id "bgp_asn";
       bgp_peer_address =
         Prop.computed __resource_type __resource_id
           "bgp_peer_address";
       bgp_transit_gateway_addresses =
         Prop.computed __resource_type __resource_id
           "bgp_transit_gateway_addresses";
       id = Prop.computed __resource_type __resource_id "id";
       inside_cidr_blocks =
         Prop.computed __resource_type __resource_id
           "inside_cidr_blocks";
       peer_address =
         Prop.computed __resource_type __resource_id "peer_address";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_address =
         Prop.computed __resource_type __resource_id
           "transit_gateway_address";
       transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_attachment_id";
     }
      : t)
  in
  __resource_attributes
