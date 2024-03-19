(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type whitelist_rules

val whitelist_rules : cidr:string prop -> unit -> whitelist_rules

type aws_medialive_input_security_group

val aws_medialive_input_security_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  whitelist_rules:whitelist_rules list ->
  unit ->
  aws_medialive_input_security_group

val yojson_of_aws_medialive_input_security_group :
  aws_medialive_input_security_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  inputs : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  whitelist_rules:whitelist_rules list ->
  string ->
  t
