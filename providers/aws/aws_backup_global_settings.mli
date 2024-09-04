(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_global_settings

val aws_backup_global_settings :
  ?id:string prop ->
  global_settings:string prop Tf_core.assoc ->
  unit ->
  aws_backup_global_settings

val yojson_of_aws_backup_global_settings :
  aws_backup_global_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  global_settings : string Tf_core.assoc prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  global_settings:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  global_settings:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
