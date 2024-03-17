(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_readiness_check__timeouts
type aws_route53recoveryreadiness_readiness_check

val aws_route53recoveryreadiness_readiness_check :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53recoveryreadiness_readiness_check__timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  string ->
  unit
