(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_pool_roles_attachment__role_mapping__mapping_rule

type aws_cognito_identity_pool_roles_attachment__role_mapping
type aws_cognito_identity_pool_roles_attachment

type t = private {
  id : string prop;
  identity_pool_id : string prop;
  roles : (string * string) list prop;
}

val aws_cognito_identity_pool_roles_attachment :
  ?id:string prop ->
  identity_pool_id:string prop ->
  roles:(string * string prop) list ->
  role_mapping:
    aws_cognito_identity_pool_roles_attachment__role_mapping list ->
  string ->
  t
