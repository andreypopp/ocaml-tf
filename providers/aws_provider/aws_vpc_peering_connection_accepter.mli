(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_peering_connection_accepter__accepter
type aws_vpc_peering_connection_accepter__requester
type aws_vpc_peering_connection_accepter__timeouts
type aws_vpc_peering_connection_accepter

type t = private {
  accept_status : string prop;
  auto_accept : bool prop;
  id : string prop;
  peer_owner_id : string prop;
  peer_region : string prop;
  peer_vpc_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  vpc_peering_connection_id : string prop;
}

val aws_vpc_peering_connection_accepter :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_peering_connection_accepter__timeouts ->
  vpc_peering_connection_id:string prop ->
  accepter:aws_vpc_peering_connection_accepter__accepter list ->
  requester:aws_vpc_peering_connection_accepter__requester list ->
  string ->
  t
