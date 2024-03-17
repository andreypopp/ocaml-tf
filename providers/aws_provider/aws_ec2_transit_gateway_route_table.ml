(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route_table *)

type t = {
  arn : string prop;
  default_association_route_table : bool prop;
  default_propagation_route_table : bool prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

let aws_ec2_transit_gateway_route_table ?id ?tags ?tags_all
    ~transit_gateway_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_route_table" in
  let __resource =
    ({ id; tags; tags_all; transit_gateway_id }
      : aws_ec2_transit_gateway_route_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_association_route_table =
         Prop.computed __resource_type __resource_id
           "default_association_route_table";
       default_propagation_route_table =
         Prop.computed __resource_type __resource_id
           "default_propagation_route_table";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
     }
      : t)
  in
  __resource_attributes
