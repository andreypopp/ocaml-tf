(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_readiness_check__timeouts
type aws_route53recoveryreadiness_readiness_check

type t = private {
  arn : string prop;
  id : string prop;
  readiness_check_name : string prop;
  resource_set_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_route53recoveryreadiness_readiness_check :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53recoveryreadiness_readiness_check__timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  string ->
  t
