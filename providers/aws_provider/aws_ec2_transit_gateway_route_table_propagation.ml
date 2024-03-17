(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table_propagation = {
  id : string prop option; [@option]  (** id *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string prop;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route_table_propagation *)

type t = {
  id : string prop;
  resource_id : string prop;
  resource_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let aws_ec2_transit_gateway_route_table_propagation ?id
    ~transit_gateway_attachment_id ~transit_gateway_route_table_id
    __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_route_table_propagation"
  in
  let __resource =
    ({
       id;
       transit_gateway_attachment_id;
       transit_gateway_route_table_id;
     }
      : aws_ec2_transit_gateway_route_table_propagation)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route_table_propagation
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
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
