(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_local_gateway_route_table_vpc_association = {
  local_gateway_route_table_id : string;
      (** local_gateway_route_table_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_ec2_local_gateway_route_table_vpc_association *)

let aws_ec2_local_gateway_route_table_vpc_association ?tags
    ~local_gateway_route_table_id ~vpc_id __resource_id =
  let __resource_type =
    "aws_ec2_local_gateway_route_table_vpc_association"
  in
  let __resource = { local_gateway_route_table_id; tags; vpc_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_local_gateway_route_table_vpc_association
       __resource);
  ()
