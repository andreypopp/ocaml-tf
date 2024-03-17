(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudsearch_domain__endpoint_options
type aws_cloudsearch_domain__index_field
type aws_cloudsearch_domain__scaling_parameters
type aws_cloudsearch_domain__timeouts
type aws_cloudsearch_domain

val aws_cloudsearch_domain :
  ?id:string ->
  ?multi_az:bool ->
  ?timeouts:aws_cloudsearch_domain__timeouts ->
  name:string ->
  endpoint_options:aws_cloudsearch_domain__endpoint_options list ->
  index_field:aws_cloudsearch_domain__index_field list ->
  scaling_parameters:aws_cloudsearch_domain__scaling_parameters list ->
  string ->
  unit
