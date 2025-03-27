(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_consul_secret_backend

val vault_consul_secret_backend :
  ?bootstrap:bool prop ->
  ?ca_cert:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?scheme:string prop ->
  ?token:string prop ->
  address:string prop ->
  unit ->
  vault_consul_secret_backend

val yojson_of_vault_consul_secret_backend : vault_consul_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  bootstrap : bool prop;
  ca_cert : string prop;
  client_cert : string prop;
  client_key : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  scheme : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bootstrap:bool prop ->
  ?ca_cert:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?scheme:string prop ->
  ?token:string prop ->
  address:string prop ->
  string ->
  t

val make :
  ?bootstrap:bool prop ->
  ?ca_cert:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?scheme:string prop ->
  ?token:string prop ->
  address:string prop ->
  string ->
  t Tf_core.resource
