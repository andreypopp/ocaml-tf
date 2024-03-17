(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_member__timeouts
type aws_guardduty_member

type t = private {
  account_id : string prop;
  detector_id : string prop;
  disable_email_notification : bool prop;
  email : string prop;
  id : string prop;
  invitation_message : string prop;
  invite : bool prop;
  relationship_status : string prop;
}

val aws_guardduty_member :
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?timeouts:aws_guardduty_member__timeouts ->
  account_id:string prop ->
  detector_id:string prop ->
  email:string prop ->
  string ->
  t
