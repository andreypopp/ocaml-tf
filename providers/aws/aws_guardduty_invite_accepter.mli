(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_invite_accepter__timeouts
type aws_guardduty_invite_accepter

type t = private {
  detector_id : string prop;
  id : string prop;
  master_account_id : string prop;
}

val aws_guardduty_invite_accepter :
  ?id:string prop ->
  ?timeouts:aws_guardduty_invite_accepter__timeouts ->
  detector_id:string prop ->
  master_account_id:string prop ->
  string ->
  t
