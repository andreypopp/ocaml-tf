(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_local_gateway_route_table_vpc_association = {
  id : string prop option; [@option]  (** id *)
  local_gateway_route_table_id : string prop;
      (** local_gateway_route_table_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_ec2_local_gateway_route_table_vpc_association *)

let aws_ec2_local_gateway_route_table_vpc_association ?id ?tags
    ?tags_all ~local_gateway_route_table_id ~vpc_id () :
    aws_ec2_local_gateway_route_table_vpc_association =
  { id; local_gateway_route_table_id; tags; tags_all; vpc_id }

type t = {
  id : string prop;
  local_gateway_id : string prop;
  local_gateway_route_table_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ~local_gateway_route_table_id ~vpc_id __resource_id =
  let __resource_type =
    "aws_ec2_local_gateway_route_table_vpc_association"
  in
  let __resource =
    aws_ec2_local_gateway_route_table_vpc_association ?id ?tags
      ?tags_all ~local_gateway_route_table_id ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_local_gateway_route_table_vpc_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       local_gateway_id =
         Prop.computed __resource_type __resource_id
           "local_gateway_id";
       local_gateway_route_table_id =
         Prop.computed __resource_type __resource_id
           "local_gateway_route_table_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
