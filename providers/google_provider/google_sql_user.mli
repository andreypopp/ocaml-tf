(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_user__password_policy__status = {
  locked : bool prop;  (** locked *)
  password_expiration_time : string prop;
      (** password_expiration_time *)
}

type google_sql_user__password_policy
type google_sql_user__timeouts

type google_sql_user__sql_server_user_details = {
  disabled : bool prop;  (** disabled *)
  server_roles : string prop list;  (** server_roles *)
}

type google_sql_user

val google_sql_user :
  ?deletion_policy:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:google_sql_user__timeouts ->
  instance:string prop ->
  name:string prop ->
  password_policy:google_sql_user__password_policy list ->
  string ->
  unit
