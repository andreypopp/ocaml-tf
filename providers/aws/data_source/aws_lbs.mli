(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lbs

val aws_lbs :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_lbs

val yojson_of_aws_lbs : aws_lbs -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arns : string list prop;
  id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
