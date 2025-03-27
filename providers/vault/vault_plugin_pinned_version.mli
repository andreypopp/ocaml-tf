(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_plugin_pinned_version

val vault_plugin_pinned_version :
  ?id:string prop -> name:string prop -> type_:string prop -> version:string prop -> unit -> vault_plugin_pinned_version

val yojson_of_vault_plugin_pinned_version : vault_plugin_pinned_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module -> ?id:string prop -> name:string prop -> type_:string prop -> version:string prop -> string -> t

val make :
  ?id:string prop -> name:string prop -> type_:string prop -> version:string prop -> string -> t Tf_core.resource
