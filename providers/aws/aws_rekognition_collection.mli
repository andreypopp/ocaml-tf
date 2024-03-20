(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_rekognition_collection

val aws_rekognition_collection :
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  unit ->
  aws_rekognition_collection

val yojson_of_aws_rekognition_collection :
  aws_rekognition_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  collection_id : string prop;
  face_model_version : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  string ->
  t Tf_core.resource
