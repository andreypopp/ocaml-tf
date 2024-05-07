(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type gateway = {
  enabled : bool prop;  (** enabled *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_hdinsight_cluster

val azurerm_hdinsight_cluster :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_hdinsight_cluster

val yojson_of_azurerm_hdinsight_cluster :
  azurerm_hdinsight_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_version : string prop;
  component_versions : (string * string) list prop;
  edge_ssh_endpoint : string prop;
  gateway : gateway list prop;
  https_endpoint : string prop;
  id : string prop;
  kafka_rest_proxy_endpoint : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  ssh_endpoint : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  tls_min_version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
