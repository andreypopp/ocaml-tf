(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_quota_lease_count

val vault_quota_lease_count :
  ?id:string prop ->
  ?inheritable:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  max_leases:float prop ->
  name:string prop ->
  unit ->
  vault_quota_lease_count

val yojson_of_vault_quota_lease_count : vault_quota_lease_count -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  inheritable : bool prop;
  max_leases : float prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?inheritable:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  max_leases:float prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?inheritable:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  max_leases:float prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
