(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_pool_roles_attachment__role_mapping__mapping_rule

type aws_cognito_identity_pool_roles_attachment__role_mapping
type aws_cognito_identity_pool_roles_attachment

val aws_cognito_identity_pool_roles_attachment :
  identity_pool_id:string ->
  roles:(string * string) list ->
  role_mapping:
    aws_cognito_identity_pool_roles_attachment__role_mapping list ->
  string ->
  unit
