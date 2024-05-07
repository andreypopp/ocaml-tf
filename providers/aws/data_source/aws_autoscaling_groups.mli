(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_autoscaling_groups

val aws_autoscaling_groups :
  ?id:string prop ->
  ?names:string prop list ->
  filter:filter list ->
  unit ->
  aws_autoscaling_groups

val yojson_of_aws_autoscaling_groups : aws_autoscaling_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?names:string prop list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?names:string prop list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
