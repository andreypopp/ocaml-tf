(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table_association = {
  id : string prop option; [@option]  (** id *)
  replace_existing_association : bool prop option; [@option]
      (** replace_existing_association *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string prop;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route_table_association *)

type t = {
  id : string prop;
  replace_existing_association : bool prop;
  resource_id : string prop;
  resource_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let aws_ec2_transit_gateway_route_table_association ?id
    ?replace_existing_association ~transit_gateway_attachment_id
    ~transit_gateway_route_table_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_route_table_association"
  in
  let __resource =
    ({
       id;
       replace_existing_association;
       transit_gateway_attachment_id;
       transit_gateway_route_table_id;
     }
      : aws_ec2_transit_gateway_route_table_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route_table_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       replace_existing_association =
         Prop.computed __resource_type __resource_id
           "replace_existing_association";
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
