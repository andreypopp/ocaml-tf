(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_inbound_connection_accepter__timeouts
type aws_opensearch_inbound_connection_accepter

type t = private {
  connection_id : string prop;
  connection_status : string prop;
  id : string prop;
}

val aws_opensearch_inbound_connection_accepter :
  ?id:string prop ->
  ?timeouts:aws_opensearch_inbound_connection_accepter__timeouts ->
  connection_id:string prop ->
  string ->
  t
