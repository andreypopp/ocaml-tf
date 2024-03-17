(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticsearch_vpc_endpoint__timeouts
type aws_elasticsearch_vpc_endpoint__vpc_options
type aws_elasticsearch_vpc_endpoint

val aws_elasticsearch_vpc_endpoint :
  ?timeouts:aws_elasticsearch_vpc_endpoint__timeouts ->
  domain_arn:string ->
  vpc_options:aws_elasticsearch_vpc_endpoint__vpc_options list ->
  string ->
  unit
