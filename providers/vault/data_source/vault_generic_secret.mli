(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_generic_secret

val vault_generic_secret :
  ?id:string prop ->
  ?namespace:string prop ->
  ?version:float prop ->
  ?with_lease_start_time:bool prop ->
  path:string prop ->
  unit ->
  vault_generic_secret

val yojson_of_vault_generic_secret : vault_generic_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  lease_start_time : string prop;
  namespace : string prop;
  path : string prop;
  version : float prop;
  with_lease_start_time : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?version:float prop ->
  ?with_lease_start_time:bool prop ->
  path:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?version:float prop ->
  ?with_lease_start_time:bool prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
