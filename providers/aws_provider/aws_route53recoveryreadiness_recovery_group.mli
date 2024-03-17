(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_recovery_group__timeouts
type aws_route53recoveryreadiness_recovery_group

val aws_route53recoveryreadiness_recovery_group :
  ?cells:string list ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_route53recoveryreadiness_recovery_group__timeouts ->
  recovery_group_name:string ->
  string ->
  unit
