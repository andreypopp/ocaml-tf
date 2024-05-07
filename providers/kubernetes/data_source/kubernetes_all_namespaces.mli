(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kubernetes_all_namespaces

val kubernetes_all_namespaces :
  ?id:string prop -> unit -> kubernetes_all_namespaces

val yojson_of_kubernetes_all_namespaces :
  kubernetes_all_namespaces -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  namespaces : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
