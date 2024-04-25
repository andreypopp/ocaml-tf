(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type home_directory_mappings

val home_directory_mappings :
  entry:string prop ->
  target:string prop ->
  unit ->
  home_directory_mappings

type posix_profile

val posix_profile :
  ?secondary_gids:float prop list ->
  gid:float prop ->
  uid:float prop ->
  unit ->
  posix_profile

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_transfer_user

val aws_transfer_user :
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?home_directory_mappings:home_directory_mappings list ->
  ?posix_profile:posix_profile list ->
  ?timeouts:timeouts ->
  role:string prop ->
  server_id:string prop ->
  user_name:string prop ->
  unit ->
  aws_transfer_user

val yojson_of_aws_transfer_user : aws_transfer_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?home_directory_mappings:home_directory_mappings list ->
  ?posix_profile:posix_profile list ->
  ?timeouts:timeouts ->
  role:string prop ->
  server_id:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?home_directory_mappings:home_directory_mappings list ->
  ?posix_profile:posix_profile list ->
  ?timeouts:timeouts ->
  role:string prop ->
  server_id:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
