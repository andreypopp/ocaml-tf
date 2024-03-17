(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_protection_health_check_association

type t = private {
  health_check_arn : string prop;
  id : string prop;
  shield_protection_id : string prop;
}

val aws_shield_protection_health_check_association :
  ?id:string prop ->
  health_check_arn:string prop ->
  shield_protection_id:string prop ->
  string ->
  t
