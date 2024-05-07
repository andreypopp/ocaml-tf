(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_imagebuilder_container_recipes

val aws_imagebuilder_container_recipes :
  ?id:string prop ->
  ?owner:string prop ->
  filter:filter list ->
  unit ->
  aws_imagebuilder_container_recipes

val yojson_of_aws_imagebuilder_container_recipes :
  aws_imagebuilder_container_recipes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  names : string list prop;
  owner : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owner:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owner:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
