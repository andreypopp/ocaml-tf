(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_identity_pool_roles_attachment__role_mapping__mapping_rule = {
  claim : string;  (** claim *)
  match_type : string;  (** match_type *)
  role_arn : string;  (** role_arn *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool_roles_attachment__role_mapping__mapping_rule *)

type aws_cognito_identity_pool_roles_attachment__role_mapping = {
  ambiguous_role_resolution : string option; [@option]
      (** ambiguous_role_resolution *)
  identity_provider : string;  (** identity_provider *)
  type_ : string; [@key "type"]  (** type *)
  mapping_rule :
    aws_cognito_identity_pool_roles_attachment__role_mapping__mapping_rule
    list;
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool_roles_attachment__role_mapping *)

type aws_cognito_identity_pool_roles_attachment = {
  id : string option; [@option]  (** id *)
  identity_pool_id : string;  (** identity_pool_id *)
  roles : (string * string) list;  (** roles *)
  role_mapping :
    aws_cognito_identity_pool_roles_attachment__role_mapping list;
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool_roles_attachment *)

let aws_cognito_identity_pool_roles_attachment ?id ~identity_pool_id
    ~roles ~role_mapping __resource_id =
  let __resource_type =
    "aws_cognito_identity_pool_roles_attachment"
  in
  let __resource = { id; identity_pool_id; roles; role_mapping } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_identity_pool_roles_attachment __resource);
  ()
