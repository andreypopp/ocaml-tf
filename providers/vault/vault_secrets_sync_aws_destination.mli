(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_aws_destination

val vault_secrets_sync_aws_destination :
  ?access_key_id:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?external_id:string prop ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?secret_access_key:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  unit ->
  vault_secrets_sync_aws_destination

val yojson_of_vault_secrets_sync_aws_destination : vault_secrets_sync_aws_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_key_id : string prop;
  custom_tags : string Tf_core.assoc prop;
  external_id : string prop;
  granularity : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  region : string prop;
  role_arn : string prop;
  secret_access_key : string prop;
  secret_name_template : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_key_id:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?external_id:string prop ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?secret_access_key:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?access_key_id:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?external_id:string prop ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?secret_access_key:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
