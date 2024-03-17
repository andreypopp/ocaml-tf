(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_attachment_accepter__timeouts
type aws_networkmanager_attachment_accepter

val aws_networkmanager_attachment_accepter :
  ?id:string prop ->
  ?timeouts:aws_networkmanager_attachment_accepter__timeouts ->
  attachment_id:string prop ->
  attachment_type:string prop ->
  string ->
  unit
