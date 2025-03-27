(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_consul_secret_backend_role

val vault_consul_secret_backend_role :
  ?backend:string prop ->
  ?consul_namespace:string prop ->
  ?consul_policies:string prop list ->
  ?consul_roles:string prop list ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?node_identities:string prop list ->
  ?partition:string prop ->
  ?policies:string prop list ->
  ?service_identities:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  unit ->
  vault_consul_secret_backend_role

val yojson_of_vault_consul_secret_backend_role : vault_consul_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  consul_namespace : string prop;
  consul_policies : string list prop;
  consul_roles : string list prop;
  id : string prop;
  local : bool prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  node_identities : string list prop;
  partition : string prop;
  policies : string list prop;
  service_identities : string list prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?consul_namespace:string prop ->
  ?consul_policies:string prop list ->
  ?consul_roles:string prop list ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?node_identities:string prop list ->
  ?partition:string prop ->
  ?policies:string prop list ->
  ?service_identities:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?consul_namespace:string prop ->
  ?consul_policies:string prop list ->
  ?consul_roles:string prop list ->
  ?id:string prop ->
  ?local:bool prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?node_identities:string prop list ->
  ?partition:string prop ->
  ?policies:string prop list ->
  ?service_identities:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
