(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_connection_accepter

type t = private {
  id : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
  vpc_endpoint_state : string prop;
}

val aws_vpc_endpoint_connection_accepter :
  ?id:string prop ->
  vpc_endpoint_id:string prop ->
  vpc_endpoint_service_id:string prop ->
  string ->
  t
