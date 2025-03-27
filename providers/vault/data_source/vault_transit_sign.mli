(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transit_sign

val vault_transit_sign :
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?context:string prop ->
  ?hash_algorithm:string prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?key_version:float prop ->
  ?marshaling_algorithm:string prop ->
  ?namespace:string prop ->
  ?prehashed:bool prop ->
  ?reference:string prop ->
  ?salt_length:string prop ->
  ?signature:string prop ->
  ?signature_algorithm:string prop ->
  ?signature_context:string prop ->
  name:string prop ->
  path:string prop ->
  unit ->
  vault_transit_sign

val yojson_of_vault_transit_sign : vault_transit_sign -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  batch_input : string Tf_core.assoc list prop;
  batch_results : string Tf_core.assoc list prop;
  context : string prop;
  hash_algorithm : string prop;
  id : string prop;
  input : string prop;
  key_version : float prop;
  marshaling_algorithm : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  prehashed : bool prop;
  reference : string prop;
  salt_length : string prop;
  signature : string prop;
  signature_algorithm : string prop;
  signature_context : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?context:string prop ->
  ?hash_algorithm:string prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?key_version:float prop ->
  ?marshaling_algorithm:string prop ->
  ?namespace:string prop ->
  ?prehashed:bool prop ->
  ?reference:string prop ->
  ?salt_length:string prop ->
  ?signature:string prop ->
  ?signature_algorithm:string prop ->
  ?signature_context:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?context:string prop ->
  ?hash_algorithm:string prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?key_version:float prop ->
  ?marshaling_algorithm:string prop ->
  ?namespace:string prop ->
  ?prehashed:bool prop ->
  ?reference:string prop ->
  ?salt_length:string prop ->
  ?signature:string prop ->
  ?signature_algorithm:string prop ->
  ?signature_context:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
