(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sql_server_user_details = {
  disabled : bool prop;  (** disabled *)
  server_roles : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** server_roles *)
}

type password_policy__status = {
  locked : bool prop;  (** locked *)
  password_expiration_time : string prop;
      (** password_expiration_time *)
}

type password_policy

val password_policy :
  ?allowed_failed_attempts:float prop ->
  ?enable_failed_attempts_check:bool prop ->
  ?enable_password_verification:bool prop ->
  ?password_expiration_duration:string prop ->
  unit ->
  password_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_sql_user

val google_sql_user :
  ?deletion_policy:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?password_policy:password_policy list ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  unit ->
  google_sql_user

val yojson_of_google_sql_user : google_sql_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deletion_policy : string prop;
  host : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  password : string prop;
  project : string prop;
  sql_server_user_details : sql_server_user_details list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?password_policy:password_policy list ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?deletion_policy:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?password_policy:password_policy list ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
