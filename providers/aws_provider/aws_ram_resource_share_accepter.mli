(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ram_resource_share_accepter__timeouts
type aws_ram_resource_share_accepter

type t = private {
  id : string prop;
  invitation_arn : string prop;
  receiver_account_id : string prop;
  resources : string list prop;
  sender_account_id : string prop;
  share_arn : string prop;
  share_id : string prop;
  share_name : string prop;
  status : string prop;
}

val aws_ram_resource_share_accepter :
  ?id:string prop ->
  ?timeouts:aws_ram_resource_share_accepter__timeouts ->
  share_arn:string prop ->
  string ->
  t
