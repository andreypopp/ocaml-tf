(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transit_verify

val vault_transit_verify :
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?cmac:string prop ->
  ?context:string prop ->
  ?hash_algorithm:string prop ->
  ?hmac:string prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?marshaling_algorithm:string prop ->
  ?namespace:string prop ->
  ?prehashed:bool prop ->
  ?reference:string prop ->
  ?salt_length:string prop ->
  ?signature:string prop ->
  ?signature_algorithm:string prop ->
  ?signature_context:string prop ->
  ?valid:bool prop ->
  name:string prop ->
  path:string prop ->
  unit ->
  vault_transit_verify

val yojson_of_vault_transit_verify : vault_transit_verify -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  batch_input : string Tf_core.assoc list prop;
  batch_results : string Tf_core.assoc list prop;
  cmac : string prop;
  context : string prop;
  hash_algorithm : string prop;
  hmac : string prop;
  id : string prop;
  input : string prop;
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
  valid : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?cmac:string prop ->
  ?context:string prop ->
  ?hash_algorithm:string prop ->
  ?hmac:string prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?marshaling_algorithm:string prop ->
  ?namespace:string prop ->
  ?prehashed:bool prop ->
  ?reference:string prop ->
  ?salt_length:string prop ->
  ?signature:string prop ->
  ?signature_algorithm:string prop ->
  ?signature_context:string prop ->
  ?valid:bool prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?batch_input:string prop Tf_core.assoc list ->
  ?batch_results:string prop Tf_core.assoc list ->
  ?cmac:string prop ->
  ?context:string prop ->
  ?hash_algorithm:string prop ->
  ?hmac:string prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?marshaling_algorithm:string prop ->
  ?namespace:string prop ->
  ?prehashed:bool prop ->
  ?reference:string prop ->
  ?salt_length:string prop ->
  ?signature:string prop ->
  ?signature_algorithm:string prop ->
  ?signature_context:string prop ->
  ?valid:bool prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
