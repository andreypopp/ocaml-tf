(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?update:string prop -> unit -> timeouts

type aws_networkmanager_core_network_policy_attachment

val aws_networkmanager_core_network_policy_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  policy_document:string prop ->
  unit ->
  aws_networkmanager_core_network_policy_attachment

val yojson_of_aws_networkmanager_core_network_policy_attachment :
  aws_networkmanager_core_network_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  core_network_id : string prop;
  id : string prop;
  policy_document : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  policy_document:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  policy_document:string prop ->
  string ->
  t Tf_core.resource
