(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_route53recoveryreadiness_recovery_group

val aws_route53recoveryreadiness_recovery_group :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  recovery_group_name:string prop ->
  unit ->
  aws_route53recoveryreadiness_recovery_group

val yojson_of_aws_route53recoveryreadiness_recovery_group :
  aws_route53recoveryreadiness_recovery_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cells : string list prop;
  id : string prop;
  recovery_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  recovery_group_name:string prop ->
  string ->
  t
