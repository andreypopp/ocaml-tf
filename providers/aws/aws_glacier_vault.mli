(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notification

val notification :
  events:string prop list ->
  sns_topic:string prop ->
  unit ->
  notification

type aws_glacier_vault

val aws_glacier_vault :
  ?access_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  notification:notification list ->
  unit ->
  aws_glacier_vault

val yojson_of_aws_glacier_vault : aws_glacier_vault -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy : string prop;
  arn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  notification:notification list ->
  string ->
  t

val make :
  ?access_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  notification:notification list ->
  string ->
  t Tf_core.resource
