(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type exec

val exec :
  ?args:string prop list ->
  ?env:(string * string prop) list ->
  api_version:string prop ->
  command:string prop ->
  unit ->
  exec

type experiments

val experiments : ?manifest_resource:bool prop -> unit -> experiments

type kubernetes

val kubernetes :
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?cluster_ca_certificate:string prop ->
  ?config_context:string prop ->
  ?config_context_auth_info:string prop ->
  ?config_context_cluster:string prop ->
  ?config_path:string prop ->
  ?config_paths:string prop list ->
  ?host:string prop ->
  ?ignore_annotations:string prop list ->
  ?ignore_labels:string prop list ->
  ?insecure:bool prop ->
  ?password:string prop ->
  ?proxy_url:string prop ->
  ?tls_server_name:string prop ->
  ?token:string prop ->
  ?username:string prop ->
  ?exec:exec list ->
  ?experiments:experiments list ->
  unit ->
  kubernetes

val yojson_of_kubernetes : kubernetes -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?cluster_ca_certificate:string prop ->
  ?config_context:string prop ->
  ?config_context_auth_info:string prop ->
  ?config_context_cluster:string prop ->
  ?config_path:string prop ->
  ?config_paths:string prop list ->
  ?host:string prop ->
  ?ignore_annotations:string prop list ->
  ?ignore_labels:string prop list ->
  ?insecure:bool prop ->
  ?password:string prop ->
  ?proxy_url:string prop ->
  ?tls_server_name:string prop ->
  ?token:string prop ->
  ?username:string prop ->
  ?exec:exec list ->
  ?experiments:experiments list ->
  version:string ->
  unit ->
  unit

val make :
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?cluster_ca_certificate:string prop ->
  ?config_context:string prop ->
  ?config_context_auth_info:string prop ->
  ?config_context_cluster:string prop ->
  ?config_path:string prop ->
  ?config_paths:string prop list ->
  ?host:string prop ->
  ?ignore_annotations:string prop list ->
  ?ignore_labels:string prop list ->
  ?insecure:bool prop ->
  ?password:string prop ->
  ?proxy_url:string prop ->
  ?tls_server_name:string prop ->
  ?token:string prop ->
  ?username:string prop ->
  ?exec:exec list ->
  ?experiments:experiments list ->
  unit ->
  Tf_core.provider
