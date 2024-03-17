(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivs_channel__timeouts
type aws_ivs_channel

val aws_ivs_channel :
  ?authorized:bool ->
  ?id:string ->
  ?latency_mode:string ->
  ?name:string ->
  ?recording_configuration_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_ivs_channel__timeouts ->
  string ->
  unit
