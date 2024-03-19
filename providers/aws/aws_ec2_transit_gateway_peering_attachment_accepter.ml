(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment_accepter = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_peering_attachment_accepter *)

let aws_ec2_transit_gateway_peering_attachment_accepter ?id ?tags
    ?tags_all ~transit_gateway_attachment_id () :
    aws_ec2_transit_gateway_peering_attachment_accepter =
  { id; tags; tags_all; transit_gateway_attachment_id }

type t = {
  id : string prop;
  peer_account_id : string prop;
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ~transit_gateway_attachment_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_peering_attachment_accepter"
  in
  let __resource =
    aws_ec2_transit_gateway_peering_attachment_accepter ?id ?tags
      ?tags_all ~transit_gateway_attachment_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_peering_attachment_accepter
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       peer_account_id =
         Prop.computed __resource_type __resource_id
           "peer_account_id";
       peer_region =
         Prop.computed __resource_type __resource_id "peer_region";
       peer_transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "peer_transit_gateway_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_attachment_id";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
     }
      : t)
  in
  __resource_attributes
