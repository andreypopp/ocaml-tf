(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_vpc_link = {
  name : string;  (** name *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_vpc_link *)

let aws_apigatewayv2_vpc_link ?tags ~name ~security_group_ids
    ~subnet_ids __resource_id =
  let __resource_type = "aws_apigatewayv2_vpc_link" in
  let __resource = { name; security_group_ids; subnet_ids; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_vpc_link __resource);
  ()
