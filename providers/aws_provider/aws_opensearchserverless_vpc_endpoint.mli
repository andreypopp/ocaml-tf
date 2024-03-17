(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_vpc_endpoint__timeouts
type aws_opensearchserverless_vpc_endpoint

val aws_opensearchserverless_vpc_endpoint :
  ?security_group_ids:string list ->
  ?timeouts:aws_opensearchserverless_vpc_endpoint__timeouts ->
  name:string ->
  subnet_ids:string list ->
  vpc_id:string ->
  string ->
  unit
