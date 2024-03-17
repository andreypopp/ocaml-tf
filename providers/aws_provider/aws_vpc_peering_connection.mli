(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_peering_connection__accepter
type aws_vpc_peering_connection__requester
type aws_vpc_peering_connection__timeouts
type aws_vpc_peering_connection

val aws_vpc_peering_connection :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?peer_owner_id:string prop ->
  ?peer_region:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_peering_connection__timeouts ->
  peer_vpc_id:string prop ->
  vpc_id:string prop ->
  accepter:aws_vpc_peering_connection__accepter list ->
  requester:aws_vpc_peering_connection__requester list ->
  string ->
  unit
