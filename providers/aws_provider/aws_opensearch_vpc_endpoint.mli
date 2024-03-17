(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_vpc_endpoint__timeouts
type aws_opensearch_vpc_endpoint__vpc_options
type aws_opensearch_vpc_endpoint

type t = private {
  domain_arn : string prop;
  endpoint : string prop;
  id : string prop;
}

val aws_opensearch_vpc_endpoint :
  ?id:string prop ->
  ?timeouts:aws_opensearch_vpc_endpoint__timeouts ->
  domain_arn:string prop ->
  vpc_options:aws_opensearch_vpc_endpoint__vpc_options list ->
  string ->
  t
