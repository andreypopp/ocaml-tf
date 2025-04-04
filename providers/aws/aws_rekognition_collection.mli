(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_rekognition_collection

val aws_rekognition_collection :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  unit ->
  aws_rekognition_collection

val yojson_of_aws_rekognition_collection :
  aws_rekognition_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  collection_id : string prop;
  face_model_version : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  string ->
  t Tf_core.resource
