(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_peering_connection_options__accepter
type aws_vpc_peering_connection_options__requester
type aws_vpc_peering_connection_options

val aws_vpc_peering_connection_options :
  vpc_peering_connection_id:string ->
  accepter:aws_vpc_peering_connection_options__accepter list ->
  requester:aws_vpc_peering_connection_options__requester list ->
  string ->
  unit
