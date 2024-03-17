(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_member__timeouts
type aws_guardduty_member

val aws_guardduty_member :
  ?disable_email_notification:bool ->
  ?invitation_message:string ->
  ?invite:bool ->
  ?timeouts:aws_guardduty_member__timeouts ->
  account_id:string ->
  detector_id:string ->
  email:string ->
  string ->
  unit
