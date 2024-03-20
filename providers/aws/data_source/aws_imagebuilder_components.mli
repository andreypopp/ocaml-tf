(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_imagebuilder_components

val aws_imagebuilder_components :
  ?id:string prop ->
  ?owner:string prop ->
  filter:filter list ->
  unit ->
  aws_imagebuilder_components

val yojson_of_aws_imagebuilder_components :
  aws_imagebuilder_components -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
