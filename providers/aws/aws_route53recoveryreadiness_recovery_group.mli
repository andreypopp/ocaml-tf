(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_recovery_group__timeouts
type aws_route53recoveryreadiness_recovery_group

type t = private {
  arn : string prop;
  cells : string list prop;
  id : string prop;
  recovery_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_route53recoveryreadiness_recovery_group :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53recoveryreadiness_recovery_group__timeouts ->
  recovery_group_name:string prop ->
  string ->
  t
