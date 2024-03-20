(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_region

val aws_region :
  ?endpoint:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_region

val yojson_of_aws_region : aws_region -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?endpoint:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?endpoint:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
