(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sfn_alias__routing_configuration
type aws_sfn_alias__timeouts
type aws_sfn_alias

val aws_sfn_alias :
  ?description:string ->
  ?id:string ->
  ?timeouts:aws_sfn_alias__timeouts ->
  name:string ->
  routing_configuration:aws_sfn_alias__routing_configuration list ->
  string ->
  unit
