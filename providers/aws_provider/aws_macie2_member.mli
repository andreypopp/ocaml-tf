(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_member__timeouts
type aws_macie2_member

val aws_macie2_member :
  ?invitation_disable_email_notification:bool ->
  ?invitation_message:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_macie2_member__timeouts ->
  account_id:string ->
  email:string ->
  string ->
  unit
