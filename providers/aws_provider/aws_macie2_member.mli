(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_member__timeouts
type aws_macie2_member

val aws_macie2_member :
  ?id:string prop ->
  ?invitation_disable_email_notification:bool prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_macie2_member__timeouts ->
  account_id:string prop ->
  email:string prop ->
  string ->
  unit
