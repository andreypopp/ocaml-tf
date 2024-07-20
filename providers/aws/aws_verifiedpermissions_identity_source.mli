(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__cognito_user_pool_configuration__group_configuration

val configuration__cognito_user_pool_configuration__group_configuration :
  group_entity_type:string prop ->
  unit ->
  configuration__cognito_user_pool_configuration__group_configuration

type configuration__cognito_user_pool_configuration

val configuration__cognito_user_pool_configuration :
  ?client_ids:string prop list ->
  ?group_configuration:
    configuration__cognito_user_pool_configuration__group_configuration
    list ->
  user_pool_arn:string prop ->
  unit ->
  configuration__cognito_user_pool_configuration

type configuration__open_id_connect_configuration__group_configuration

val configuration__open_id_connect_configuration__group_configuration :
  group_claim:string prop ->
  group_entity_type:string prop ->
  unit ->
  configuration__open_id_connect_configuration__group_configuration

type configuration__open_id_connect_configuration__token_selection__access_token_only

val configuration__open_id_connect_configuration__token_selection__access_token_only :
  ?audiences:string prop list ->
  ?principal_id_claim:string prop ->
  unit ->
  configuration__open_id_connect_configuration__token_selection__access_token_only

type configuration__open_id_connect_configuration__token_selection__identity_token_only

val configuration__open_id_connect_configuration__token_selection__identity_token_only :
  ?client_ids:string prop list ->
  ?principal_id_claim:string prop ->
  unit ->
  configuration__open_id_connect_configuration__token_selection__identity_token_only

type configuration__open_id_connect_configuration__token_selection

val configuration__open_id_connect_configuration__token_selection :
  ?access_token_only:
    configuration__open_id_connect_configuration__token_selection__access_token_only
    list ->
  ?identity_token_only:
    configuration__open_id_connect_configuration__token_selection__identity_token_only
    list ->
  unit ->
  configuration__open_id_connect_configuration__token_selection

type configuration__open_id_connect_configuration

val configuration__open_id_connect_configuration :
  ?entity_id_prefix:string prop ->
  ?group_configuration:
    configuration__open_id_connect_configuration__group_configuration
    list ->
  ?token_selection:
    configuration__open_id_connect_configuration__token_selection
    list ->
  issuer:string prop ->
  unit ->
  configuration__open_id_connect_configuration

type configuration

val configuration :
  ?cognito_user_pool_configuration:
    configuration__cognito_user_pool_configuration list ->
  ?open_id_connect_configuration:
    configuration__open_id_connect_configuration list ->
  unit ->
  configuration

type aws_verifiedpermissions_identity_source

val aws_verifiedpermissions_identity_source :
  ?principal_entity_type:string prop ->
  ?configuration:configuration list ->
  policy_store_id:string prop ->
  unit ->
  aws_verifiedpermissions_identity_source

val yojson_of_aws_verifiedpermissions_identity_source :
  aws_verifiedpermissions_identity_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy_store_id : string prop;
  principal_entity_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?principal_entity_type:string prop ->
  ?configuration:configuration list ->
  policy_store_id:string prop ->
  string ->
  t

val make :
  ?principal_entity_type:string prop ->
  ?configuration:configuration list ->
  policy_store_id:string prop ->
  string ->
  t Tf_core.resource
