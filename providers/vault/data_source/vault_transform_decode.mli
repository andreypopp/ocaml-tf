(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transform_decode

val vault_transform_decode :
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?decoded_value:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?transformation:string prop ->
  ?tweak:string prop ->
  ?value:string prop ->
  path:string prop ->
  role_name:string prop ->
  unit ->
  vault_transform_decode

val yojson_of_vault_transform_decode : vault_transform_decode -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  batch_input : string Tf_core.assoc list prop;
  batch_results : string Tf_core.assoc list prop;
  decoded_value : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  role_name : string prop;
  transformation : string prop;
  tweak : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?decoded_value:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?transformation:string prop ->
  ?tweak:string prop ->
  ?value:string prop ->
  path:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?decoded_value:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?transformation:string prop ->
  ?tweak:string prop ->
  ?value:string prop ->
  path:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
