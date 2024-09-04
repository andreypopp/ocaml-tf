(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user

val aws_cognito_user :
  ?attributes:string prop Tf_core.assoc ->
  ?client_metadata:string prop Tf_core.assoc ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:string prop Tf_core.assoc ->
  user_pool_id:string prop ->
  username:string prop ->
  unit ->
  aws_cognito_user

val yojson_of_aws_cognito_user : aws_cognito_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attributes : string Tf_core.assoc prop;
  client_metadata : string Tf_core.assoc prop;
  creation_date : string prop;
  desired_delivery_mediums : string list prop;
  enabled : bool prop;
  force_alias_creation : bool prop;
  id : string prop;
  last_modified_date : string prop;
  message_action : string prop;
  mfa_setting_list : string list prop;
  password : string prop;
  preferred_mfa_setting : string prop;
  status : string prop;
  sub : string prop;
  temporary_password : string prop;
  user_pool_id : string prop;
  username : string prop;
  validation_data : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?attributes:string prop Tf_core.assoc ->
  ?client_metadata:string prop Tf_core.assoc ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:string prop Tf_core.assoc ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?attributes:string prop Tf_core.assoc ->
  ?client_metadata:string prop Tf_core.assoc ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:string prop Tf_core.assoc ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
