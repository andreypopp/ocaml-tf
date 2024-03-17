(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_local_gateway_route_table_vpc_association = {
  id : string option; [@option]  (** id *)
  local_gateway_route_table_id : string;
      (** local_gateway_route_table_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_ec2_local_gateway_route_table_vpc_association *)

let aws_ec2_local_gateway_route_table_vpc_association ?id ?tags
    ?tags_all ~local_gateway_route_table_id ~vpc_id __resource_id =
  let __resource_type =
    "aws_ec2_local_gateway_route_table_vpc_association"
  in
  let __resource =
    { id; local_gateway_route_table_id; tags; tags_all; vpc_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_local_gateway_route_table_vpc_association
       __resource);
  ()
