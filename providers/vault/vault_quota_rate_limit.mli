(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_quota_rate_limit

val vault_quota_rate_limit :
  ?block_interval:float prop ->
  ?id:string prop ->
  ?inheritable:bool prop ->
  ?interval:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  name:string prop ->
  rate:float prop ->
  unit ->
  vault_quota_rate_limit

val yojson_of_vault_quota_rate_limit : vault_quota_rate_limit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  block_interval : float prop;
  id : string prop;
  inheritable : bool prop;
  interval : float prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  rate : float prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?block_interval:float prop ->
  ?id:string prop ->
  ?inheritable:bool prop ->
  ?interval:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  name:string prop ->
  rate:float prop ->
  string ->
  t

val make :
  ?block_interval:float prop ->
  ?id:string prop ->
  ?inheritable:bool prop ->
  ?interval:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  name:string prop ->
  rate:float prop ->
  string ->
  t Tf_core.resource
