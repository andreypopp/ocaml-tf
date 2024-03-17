(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_input_security_group__timeouts
type aws_medialive_input_security_group__whitelist_rules
type aws_medialive_input_security_group

val aws_medialive_input_security_group :
  ?tags:(string * string) list ->
  ?timeouts:aws_medialive_input_security_group__timeouts ->
  whitelist_rules:
    aws_medialive_input_security_group__whitelist_rules list ->
  string ->
  unit
