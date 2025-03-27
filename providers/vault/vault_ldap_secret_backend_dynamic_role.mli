(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_secret_backend_dynamic_role

val vault_ldap_secret_backend_dynamic_role :
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?rollback_ldif:string prop ->
  ?username_template:string prop ->
  creation_ldif:string prop ->
  deletion_ldif:string prop ->
  role_name:string prop ->
  unit ->
  vault_ldap_secret_backend_dynamic_role

val yojson_of_vault_ldap_secret_backend_dynamic_role : vault_ldap_secret_backend_dynamic_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_ldif : string prop;
  default_ttl : float prop;
  deletion_ldif : string prop;
  id : string prop;
  max_ttl : float prop;
  mount : string prop;
  namespace : string prop;
  role_name : string prop;
  rollback_ldif : string prop;
  username_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?rollback_ldif:string prop ->
  ?username_template:string prop ->
  creation_ldif:string prop ->
  deletion_ldif:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?rollback_ldif:string prop ->
  ?username_template:string prop ->
  creation_ldif:string prop ->
  deletion_ldif:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
