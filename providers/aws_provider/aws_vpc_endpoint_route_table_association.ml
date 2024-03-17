(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_route_table_association = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_route_table_association *)

let aws_vpc_endpoint_route_table_association ?id ~route_table_id
    ~vpc_endpoint_id __resource_id =
  let __resource_type = "aws_vpc_endpoint_route_table_association" in
  let __resource = { id; route_table_id; vpc_endpoint_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_route_table_association __resource);
  ()
