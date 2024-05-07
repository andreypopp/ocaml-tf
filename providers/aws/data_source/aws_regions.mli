(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_regions

val aws_regions :
  ?all_regions:bool prop ->
  ?id:string prop ->
  filter:filter list ->
  unit ->
  aws_regions

val yojson_of_aws_regions : aws_regions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  all_regions : bool prop;
  id : string prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?all_regions:bool prop ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?all_regions:bool prop ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
