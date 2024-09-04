(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type role_mapping__mapping_rule

val role_mapping__mapping_rule :
  claim:string prop ->
  match_type:string prop ->
  role_arn:string prop ->
  value:string prop ->
  unit ->
  role_mapping__mapping_rule

type role_mapping

val role_mapping :
  ?ambiguous_role_resolution:string prop ->
  ?mapping_rule:role_mapping__mapping_rule list ->
  identity_provider:string prop ->
  type_:string prop ->
  unit ->
  role_mapping

type aws_cognito_identity_pool_roles_attachment

val aws_cognito_identity_pool_roles_attachment :
  ?id:string prop ->
  identity_pool_id:string prop ->
  roles:string prop Tf_core.assoc ->
  role_mapping:role_mapping list ->
  unit ->
  aws_cognito_identity_pool_roles_attachment

val yojson_of_aws_cognito_identity_pool_roles_attachment :
  aws_cognito_identity_pool_roles_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identity_pool_id : string prop;
  roles : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  identity_pool_id:string prop ->
  roles:string prop Tf_core.assoc ->
  role_mapping:role_mapping list ->
  string ->
  t

val make :
  ?id:string prop ->
  identity_pool_id:string prop ->
  roles:string prop Tf_core.assoc ->
  role_mapping:role_mapping list ->
  string ->
  t Tf_core.resource
