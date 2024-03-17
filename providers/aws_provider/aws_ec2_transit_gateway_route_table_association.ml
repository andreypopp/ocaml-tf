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

let aws_ec2_transit_gateway_route_table_association ?id
    ?replace_existing_association ~transit_gateway_attachment_id
    ~transit_gateway_route_table_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_route_table_association"
  in
  let __resource =
    {
      id;
      replace_existing_association;
      transit_gateway_attachment_id;
      transit_gateway_route_table_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route_table_association
       __resource);
  ()
