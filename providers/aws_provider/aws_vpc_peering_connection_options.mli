(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_peering_connection_options__accepter
type aws_vpc_peering_connection_options__requester
type aws_vpc_peering_connection_options

type t = private {
  id : string prop;
  vpc_peering_connection_id : string prop;
}

val aws_vpc_peering_connection_options :
  ?id:string prop ->
  vpc_peering_connection_id:string prop ->
  accepter:aws_vpc_peering_connection_options__accepter list ->
  requester:aws_vpc_peering_connection_options__requester list ->
  string ->
  t
