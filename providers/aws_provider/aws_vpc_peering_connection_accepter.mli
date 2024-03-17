(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_peering_connection_accepter__accepter
type aws_vpc_peering_connection_accepter__requester
type aws_vpc_peering_connection_accepter__timeouts
type aws_vpc_peering_connection_accepter

val aws_vpc_peering_connection_accepter :
  ?auto_accept:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_vpc_peering_connection_accepter__timeouts ->
  vpc_peering_connection_id:string ->
  accepter:aws_vpc_peering_connection_accepter__accepter list ->
  requester:aws_vpc_peering_connection_accepter__requester list ->
  string ->
  unit
