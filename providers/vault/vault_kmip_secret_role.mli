(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kmip_secret_role

val vault_kmip_secret_role :
  ?id:string prop ->
  ?namespace:string prop ->
  ?operation_activate:bool prop ->
  ?operation_add_attribute:bool prop ->
  ?operation_all:bool prop ->
  ?operation_create:bool prop ->
  ?operation_destroy:bool prop ->
  ?operation_discover_versions:bool prop ->
  ?operation_get:bool prop ->
  ?operation_get_attribute_list:bool prop ->
  ?operation_get_attributes:bool prop ->
  ?operation_locate:bool prop ->
  ?operation_none:bool prop ->
  ?operation_register:bool prop ->
  ?operation_rekey:bool prop ->
  ?operation_revoke:bool prop ->
  ?tls_client_key_bits:float prop ->
  ?tls_client_key_type:string prop ->
  ?tls_client_ttl:float prop ->
  path:string prop ->
  role:string prop ->
  scope:string prop ->
  unit ->
  vault_kmip_secret_role

val yojson_of_vault_kmip_secret_role : vault_kmip_secret_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  namespace : string prop;
  operation_activate : bool prop;
  operation_add_attribute : bool prop;
  operation_all : bool prop;
  operation_create : bool prop;
  operation_destroy : bool prop;
  operation_discover_versions : bool prop;
  operation_get : bool prop;
  operation_get_attribute_list : bool prop;
  operation_get_attributes : bool prop;
  operation_locate : bool prop;
  operation_none : bool prop;
  operation_register : bool prop;
  operation_rekey : bool prop;
  operation_revoke : bool prop;
  path : string prop;
  role : string prop;
  scope : string prop;
  tls_client_key_bits : float prop;
  tls_client_key_type : string prop;
  tls_client_ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?operation_activate:bool prop ->
  ?operation_add_attribute:bool prop ->
  ?operation_all:bool prop ->
  ?operation_create:bool prop ->
  ?operation_destroy:bool prop ->
  ?operation_discover_versions:bool prop ->
  ?operation_get:bool prop ->
  ?operation_get_attribute_list:bool prop ->
  ?operation_get_attributes:bool prop ->
  ?operation_locate:bool prop ->
  ?operation_none:bool prop ->
  ?operation_register:bool prop ->
  ?operation_rekey:bool prop ->
  ?operation_revoke:bool prop ->
  ?tls_client_key_bits:float prop ->
  ?tls_client_key_type:string prop ->
  ?tls_client_ttl:float prop ->
  path:string prop ->
  role:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?operation_activate:bool prop ->
  ?operation_add_attribute:bool prop ->
  ?operation_all:bool prop ->
  ?operation_create:bool prop ->
  ?operation_destroy:bool prop ->
  ?operation_discover_versions:bool prop ->
  ?operation_get:bool prop ->
  ?operation_get_attribute_list:bool prop ->
  ?operation_get_attributes:bool prop ->
  ?operation_locate:bool prop ->
  ?operation_none:bool prop ->
  ?operation_register:bool prop ->
  ?operation_rekey:bool prop ->
  ?operation_revoke:bool prop ->
  ?tls_client_key_bits:float prop ->
  ?tls_client_key_type:string prop ->
  ?tls_client_ttl:float prop ->
  path:string prop ->
  role:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
