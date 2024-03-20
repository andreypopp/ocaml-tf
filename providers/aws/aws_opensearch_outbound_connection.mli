(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_properties__cross_cluster_search

val connection_properties__cross_cluster_search :
  ?skip_unavailable:string prop ->
  unit ->
  connection_properties__cross_cluster_search

type connection_properties

val connection_properties :
  cross_cluster_search:
    connection_properties__cross_cluster_search list ->
  unit ->
  connection_properties

type local_domain_info

val local_domain_info :
  domain_name:string prop ->
  owner_id:string prop ->
  region:string prop ->
  unit ->
  local_domain_info

type remote_domain_info

val remote_domain_info :
  domain_name:string prop ->
  owner_id:string prop ->
  region:string prop ->
  unit ->
  remote_domain_info

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_opensearch_outbound_connection

val aws_opensearch_outbound_connection :
  ?accept_connection:bool prop ->
  ?connection_mode:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_alias:string prop ->
  connection_properties:connection_properties list ->
  local_domain_info:local_domain_info list ->
  remote_domain_info:remote_domain_info list ->
  unit ->
  aws_opensearch_outbound_connection

val yojson_of_aws_opensearch_outbound_connection :
  aws_opensearch_outbound_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_connection : bool prop;
  connection_alias : string prop;
  connection_mode : string prop;
  connection_status : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_connection:bool prop ->
  ?connection_mode:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_alias:string prop ->
  connection_properties:connection_properties list ->
  local_domain_info:local_domain_info list ->
  remote_domain_info:remote_domain_info list ->
  string ->
  t

val make :
  ?accept_connection:bool prop ->
  ?connection_mode:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_alias:string prop ->
  connection_properties:connection_properties list ->
  local_domain_info:local_domain_info list ->
  remote_domain_info:remote_domain_info list ->
  string ->
  t Tf_core.resource
