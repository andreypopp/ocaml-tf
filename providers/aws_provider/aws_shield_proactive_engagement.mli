(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_proactive_engagement__emergency_contact
type aws_shield_proactive_engagement
type t = private { enabled : bool prop; id : string prop }

val aws_shield_proactive_engagement :
  enabled:bool prop ->
  emergency_contact:
    aws_shield_proactive_engagement__emergency_contact list ->
  string ->
  t
