(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudsearch_domain__endpoint_options
type aws_cloudsearch_domain__index_field
type aws_cloudsearch_domain__scaling_parameters
type aws_cloudsearch_domain__timeouts
type aws_cloudsearch_domain

type t = private {
  arn : string prop;
  document_service_endpoint : string prop;
  domain_id : string prop;
  id : string prop;
  multi_az : bool prop;
  name : string prop;
  search_service_endpoint : string prop;
}

val aws_cloudsearch_domain :
  ?id:string prop ->
  ?multi_az:bool prop ->
  ?timeouts:aws_cloudsearch_domain__timeouts ->
  name:string prop ->
  endpoint_options:aws_cloudsearch_domain__endpoint_options list ->
  index_field:aws_cloudsearch_domain__index_field list ->
  scaling_parameters:aws_cloudsearch_domain__scaling_parameters list ->
  string ->
  t
