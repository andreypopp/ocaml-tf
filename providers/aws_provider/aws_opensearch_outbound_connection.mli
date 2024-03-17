(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_outbound_connection__connection_properties__cross_cluster_search

type aws_opensearch_outbound_connection__connection_properties
type aws_opensearch_outbound_connection__local_domain_info
type aws_opensearch_outbound_connection__remote_domain_info
type aws_opensearch_outbound_connection__timeouts
type aws_opensearch_outbound_connection

val aws_opensearch_outbound_connection :
  ?accept_connection:bool ->
  ?connection_mode:string ->
  ?id:string ->
  ?timeouts:aws_opensearch_outbound_connection__timeouts ->
  connection_alias:string ->
  connection_properties:
    aws_opensearch_outbound_connection__connection_properties list ->
  local_domain_info:
    aws_opensearch_outbound_connection__local_domain_info list ->
  remote_domain_info:
    aws_opensearch_outbound_connection__remote_domain_info list ->
  string ->
  unit
