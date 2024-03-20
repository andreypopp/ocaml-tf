(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_codecatalyst_project

val aws_codecatalyst_project :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  space_name:string prop ->
  unit ->
  aws_codecatalyst_project

val yojson_of_aws_codecatalyst_project :
  aws_codecatalyst_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  space_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  space_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  space_name:string prop ->
  string ->
  t Tf_core.resource
