(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_readiness_check__timeouts
type aws_route53recoveryreadiness_readiness_check

val aws_route53recoveryreadiness_readiness_check :
  ?tags:(string * string) list ->
  ?timeouts:aws_route53recoveryreadiness_readiness_check__timeouts ->
  readiness_check_name:string ->
  resource_set_name:string ->
  string ->
  unit
