(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_input_security_group__timeouts
type aws_medialive_input_security_group__whitelist_rules
type aws_medialive_input_security_group

type t = private {
  arn : string prop;
  id : string prop;
  inputs : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_medialive_input_security_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_medialive_input_security_group__timeouts ->
  whitelist_rules:
    aws_medialive_input_security_group__whitelist_rules list ->
  string ->
  t
