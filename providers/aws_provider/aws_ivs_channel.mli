(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivs_channel__timeouts
type aws_ivs_channel

val aws_ivs_channel :
  ?authorized:bool prop ->
  ?id:string prop ->
  ?latency_mode:string prop ->
  ?name:string prop ->
  ?recording_configuration_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_ivs_channel__timeouts ->
  string ->
  unit
