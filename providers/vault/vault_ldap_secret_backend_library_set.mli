(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_secret_backend_library_set

val vault_ldap_secret_backend_library_set :
  ?disable_check_in_enforcement:bool prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  name:string prop ->
  service_account_names:string prop list ->
  unit ->
  vault_ldap_secret_backend_library_set

val yojson_of_vault_ldap_secret_backend_library_set : vault_ldap_secret_backend_library_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disable_check_in_enforcement : bool prop;
  id : string prop;
  max_ttl : float prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  service_account_names : string list prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_check_in_enforcement:bool prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  name:string prop ->
  service_account_names:string prop list ->
  string ->
  t

val make :
  ?disable_check_in_enforcement:bool prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  name:string prop ->
  service_account_names:string prop list ->
  string ->
  t Tf_core.resource
