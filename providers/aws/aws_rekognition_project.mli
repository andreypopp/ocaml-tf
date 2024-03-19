(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_rekognition_project

val aws_rekognition_project :
  ?auto_update:string prop ->
  ?feature:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_rekognition_project

val yojson_of_aws_rekognition_project :
  aws_rekognition_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_update : string prop;
  feature : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_update:string prop ->
  ?feature:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t
