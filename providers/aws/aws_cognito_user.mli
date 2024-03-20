(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user

val aws_cognito_user :
  ?attributes:(string * string prop) list ->
  ?client_metadata:(string * string prop) list ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:(string * string prop) list ->
  user_pool_id:string prop ->
  username:string prop ->
  unit ->
  aws_cognito_user

val yojson_of_aws_cognito_user : aws_cognito_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attributes : (string * string) list prop;
  client_metadata : (string * string) list prop;
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
  validation_data : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?attributes:(string * string prop) list ->
  ?client_metadata:(string * string prop) list ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:(string * string prop) list ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?attributes:(string * string prop) list ->
  ?client_metadata:(string * string prop) list ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:(string * string prop) list ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
