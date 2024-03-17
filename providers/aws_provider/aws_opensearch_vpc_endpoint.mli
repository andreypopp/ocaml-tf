(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_vpc_endpoint__timeouts
type aws_opensearch_vpc_endpoint__vpc_options
type aws_opensearch_vpc_endpoint

val aws_opensearch_vpc_endpoint :
  ?id:string ->
  ?timeouts:aws_opensearch_vpc_endpoint__timeouts ->
  domain_arn:string ->
  vpc_options:aws_opensearch_vpc_endpoint__vpc_options list ->
  string ->
  unit
