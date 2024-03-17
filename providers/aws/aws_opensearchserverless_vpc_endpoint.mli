(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_vpc_endpoint__timeouts
type aws_opensearchserverless_vpc_endpoint

type t = private {
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

val aws_opensearchserverless_vpc_endpoint :
  ?security_group_ids:string prop list ->
  ?timeouts:aws_opensearchserverless_vpc_endpoint__timeouts ->
  name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  string ->
  t
