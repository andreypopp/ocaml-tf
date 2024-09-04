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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?notification:notification list ->
  name:string prop ->
  unit ->
  aws_glacier_vault

val yojson_of_aws_glacier_vault : aws_glacier_vault -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policy : string prop;
  arn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?notification:notification list ->
  name:string prop ->
  string ->
  t

val make :
  ?access_policy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?notification:notification list ->
  name:string prop ->
  string ->
  t Tf_core.resource
