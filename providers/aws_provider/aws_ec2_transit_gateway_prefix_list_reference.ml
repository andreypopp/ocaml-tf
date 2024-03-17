(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_prefix_list_reference = {
  blackhole : bool prop option; [@option]  (** blackhole *)
  id : string prop option; [@option]  (** id *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  transit_gateway_attachment_id : string prop option; [@option]
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string prop;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_prefix_list_reference *)

type t = {
  blackhole : bool prop;
  id : string prop;
  prefix_list_id : string prop;
  prefix_list_owner_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let aws_ec2_transit_gateway_prefix_list_reference ?blackhole ?id
    ?transit_gateway_attachment_id ~prefix_list_id
    ~transit_gateway_route_table_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_prefix_list_reference"
  in
  let __resource =
    ({
       blackhole;
       id;
       prefix_list_id;
       transit_gateway_attachment_id;
       transit_gateway_route_table_id;
     }
      : aws_ec2_transit_gateway_prefix_list_reference)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_prefix_list_reference
       __resource);
  let __resource_attributes =
    ({
       blackhole =
         Prop.computed __resource_type __resource_id "blackhole";
       id = Prop.computed __resource_type __resource_id "id";
       prefix_list_id =
         Prop.computed __resource_type __resource_id "prefix_list_id";
       prefix_list_owner_id =
         Prop.computed __resource_type __resource_id
           "prefix_list_owner_id";
       transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_attachment_id";
       transit_gateway_route_table_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_route_table_id";
     }
      : t)
  in
  __resource_attributes
