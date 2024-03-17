(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_resource_server__scope = {
  scope_description : string prop;  (** scope_description *)
  scope_name : string prop;  (** scope_name *)
}
[@@deriving yojson_of]
(** aws_cognito_resource_server__scope *)

type aws_cognito_resource_server = {
  id : string prop option; [@option]  (** id *)
  identifier : string prop;  (** identifier *)
  name : string prop;  (** name *)
  user_pool_id : string prop;  (** user_pool_id *)
  scope : aws_cognito_resource_server__scope list;
}
[@@deriving yojson_of]
(** aws_cognito_resource_server *)

let aws_cognito_resource_server ?id ~identifier ~name ~user_pool_id
    ~scope __resource_id =
  let __resource_type = "aws_cognito_resource_server" in
  let __resource = { id; identifier; name; user_pool_id; scope } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_resource_server __resource);
  ()
