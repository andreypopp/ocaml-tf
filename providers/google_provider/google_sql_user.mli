(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_user__password_policy__status = {
  locked : bool;  (** locked *)
  password_expiration_time : string;  (** password_expiration_time *)
}
[@@deriving yojson_of]

type google_sql_user__password_policy
type google_sql_user__timeouts

type google_sql_user__sql_server_user_details = {
  disabled : bool;  (** disabled *)
  server_roles : string list;  (** server_roles *)
}
[@@deriving yojson_of]

type google_sql_user

val google_sql_user :
  ?deletion_policy:string ->
  ?password:string ->
  ?type_:string ->
  ?timeouts:google_sql_user__timeouts ->
  instance:string ->
  name:string ->
  password_policy:google_sql_user__password_policy list ->
  string ->
  unit
