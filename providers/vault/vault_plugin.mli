(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_plugin

val vault_plugin :
  ?args:string prop list ->
  ?env:string prop list ->
  ?id:string prop ->
  ?oci_image:string prop ->
  ?runtime:string prop ->
  ?version:string prop ->
  command:string prop ->
  name:string prop ->
  sha256:string prop ->
  type_:string prop ->
  unit ->
  vault_plugin

val yojson_of_vault_plugin : vault_plugin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  args : string list prop;
  command : string prop;
  env : string list prop;
  id : string prop;
  name : string prop;
  oci_image : string prop;
  runtime : string prop;
  sha256 : string prop;
  type_ : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?args:string prop list ->
  ?env:string prop list ->
  ?id:string prop ->
  ?oci_image:string prop ->
  ?runtime:string prop ->
  ?version:string prop ->
  command:string prop ->
  name:string prop ->
  sha256:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?args:string prop list ->
  ?env:string prop list ->
  ?id:string prop ->
  ?oci_image:string prop ->
  ?runtime:string prop ->
  ?version:string prop ->
  command:string prop ->
  name:string prop ->
  sha256:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
