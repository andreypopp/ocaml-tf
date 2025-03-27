(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_nomad_secret_backend

val vault_nomad_secret_backend :
  ?address:string prop ->
  ?backend:string prop ->
  ?ca_cert:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_token_name_length:float prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?token:string prop ->
  ?ttl:float prop ->
  unit ->
  vault_nomad_secret_backend

val yojson_of_vault_nomad_secret_backend : vault_nomad_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  backend : string prop;
  ca_cert : string prop;
  client_cert : string prop;
  client_key : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  max_token_name_length : float prop;
  max_ttl : float prop;
  namespace : string prop;
  token : string prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?address:string prop ->
  ?backend:string prop ->
  ?ca_cert:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_token_name_length:float prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?token:string prop ->
  ?ttl:float prop ->
  string ->
  t

val make :
  ?address:string prop ->
  ?backend:string prop ->
  ?ca_cert:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_token_name_length:float prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?token:string prop ->
  ?ttl:float prop ->
  string ->
  t Tf_core.resource
