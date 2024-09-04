(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_media_convert_queue

val aws_media_convert_queue :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  unit ->
  aws_media_convert_queue

val yojson_of_aws_media_convert_queue :
  aws_media_convert_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t Tf_core.resource
