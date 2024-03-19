(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_guardduty_member

val aws_guardduty_member :
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  detector_id:string prop ->
  email:string prop ->
  unit ->
  aws_guardduty_member

val yojson_of_aws_guardduty_member : aws_guardduty_member -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  detector_id:string prop ->
  email:string prop ->
  string ->
  t
