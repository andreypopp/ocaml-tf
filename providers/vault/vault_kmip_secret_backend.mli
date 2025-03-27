(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kmip_secret_backend

val vault_kmip_secret_backend :
  ?default_tls_client_key_bits:float prop ->
  ?default_tls_client_key_type:string prop ->
  ?default_tls_client_ttl:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?listen_addrs:string prop list ->
  ?namespace:string prop ->
  ?server_hostnames:string prop list ->
  ?server_ips:string prop list ->
  ?tls_ca_key_bits:float prop ->
  ?tls_ca_key_type:string prop ->
  ?tls_min_version:string prop ->
  path:string prop ->
  unit ->
  vault_kmip_secret_backend

val yojson_of_vault_kmip_secret_backend : vault_kmip_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_tls_client_key_bits : float prop;
  default_tls_client_key_type : string prop;
  default_tls_client_ttl : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  listen_addrs : string list prop;
  namespace : string prop;
  path : string prop;
  server_hostnames : string list prop;
  server_ips : string list prop;
  tls_ca_key_bits : float prop;
  tls_ca_key_type : string prop;
  tls_min_version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_tls_client_key_bits:float prop ->
  ?default_tls_client_key_type:string prop ->
  ?default_tls_client_ttl:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?listen_addrs:string prop list ->
  ?namespace:string prop ->
  ?server_hostnames:string prop list ->
  ?server_ips:string prop list ->
  ?tls_ca_key_bits:float prop ->
  ?tls_ca_key_type:string prop ->
  ?tls_min_version:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?default_tls_client_key_bits:float prop ->
  ?default_tls_client_key_type:string prop ->
  ?default_tls_client_ttl:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?listen_addrs:string prop list ->
  ?namespace:string prop ->
  ?server_hostnames:string prop list ->
  ?server_ips:string prop list ->
  ?tls_ca_key_bits:float prop ->
  ?tls_ca_key_type:string prop ->
  ?tls_min_version:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
