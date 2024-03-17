(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_invite_accepter__timeouts
type aws_guardduty_invite_accepter

val aws_guardduty_invite_accepter :
  ?timeouts:aws_guardduty_invite_accepter__timeouts ->
  detector_id:string ->
  master_account_id:string ->
  string ->
  unit
