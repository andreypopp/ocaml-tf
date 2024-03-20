(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_global_settings

val aws_backup_global_settings :
  ?id:string prop ->
  global_settings:(string * string prop) list ->
  unit ->
  aws_backup_global_settings

val yojson_of_aws_backup_global_settings :
  aws_backup_global_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  global_settings : (string * string) list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  global_settings:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  global_settings:(string * string prop) list ->
  string ->
  t Tf_core.resource
