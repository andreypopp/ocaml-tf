(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target

val target : ?port:float prop -> id:string prop -> unit -> target

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_vpclattice_target_group_attachment

val aws_vpclattice_target_group_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  target_group_identifier:string prop ->
  target:target list ->
  unit ->
  aws_vpclattice_target_group_attachment

val yojson_of_aws_vpclattice_target_group_attachment :
  aws_vpclattice_target_group_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  target_group_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  target_group_identifier:string prop ->
  target:target list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  target_group_identifier:string prop ->
  target:target list ->
  string ->
  t Tf_core.resource
