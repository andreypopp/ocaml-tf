(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_global_settings

type t = private {
  global_settings : (string * string) list prop;
  id : string prop;
}

val aws_backup_global_settings :
  ?id:string prop ->
  global_settings:(string * string prop) list ->
  string ->
  t
