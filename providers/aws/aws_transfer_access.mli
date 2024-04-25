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

type aws_transfer_access

val aws_transfer_access :
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?role:string prop ->
  ?home_directory_mappings:home_directory_mappings list ->
  ?posix_profile:posix_profile list ->
  external_id:string prop ->
  server_id:string prop ->
  unit ->
  aws_transfer_access

val yojson_of_aws_transfer_access : aws_transfer_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  external_id : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?role:string prop ->
  ?home_directory_mappings:home_directory_mappings list ->
  ?posix_profile:posix_profile list ->
  external_id:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?role:string prop ->
  ?home_directory_mappings:home_directory_mappings list ->
  ?posix_profile:posix_profile list ->
  external_id:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
