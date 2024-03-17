(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_peering_connection__accepter
type aws_vpc_peering_connection__requester
type aws_vpc_peering_connection__timeouts
type aws_vpc_peering_connection

val aws_vpc_peering_connection :
  ?auto_accept:bool ->
  ?id:string ->
  ?peer_owner_id:string ->
  ?peer_region:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpc_peering_connection__timeouts ->
  peer_vpc_id:string ->
  vpc_id:string ->
  accepter:aws_vpc_peering_connection__accepter list ->
  requester:aws_vpc_peering_connection__requester list ->
  string ->
  unit
