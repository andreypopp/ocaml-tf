(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_vpc_link = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_vpc_link *)

let aws_apigatewayv2_vpc_link ?id ?tags ?tags_all ~name
    ~security_group_ids ~subnet_ids __resource_id =
  let __resource_type = "aws_apigatewayv2_vpc_link" in
  let __resource =
    { id; name; security_group_ids; subnet_ids; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_vpc_link __resource);
  ()
