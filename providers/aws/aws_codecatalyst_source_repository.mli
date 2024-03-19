(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_codecatalyst_source_repository

val aws_codecatalyst_source_repository :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  unit ->
  aws_codecatalyst_source_repository

val yojson_of_aws_codecatalyst_source_repository :
  aws_codecatalyst_source_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  project_name : string prop;
  space_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  project_name:string prop ->
  space_name:string prop ->
  string ->
  t
