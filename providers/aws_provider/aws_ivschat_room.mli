(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivschat_room__message_review_handler
type aws_ivschat_room__timeouts
type aws_ivschat_room

val aws_ivschat_room :
  ?id:string ->
  ?logging_configuration_identifiers:string list ->
  ?maximum_message_length:float ->
  ?maximum_message_rate_per_second:float ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ivschat_room__timeouts ->
  message_review_handler:
    aws_ivschat_room__message_review_handler list ->
  string ->
  unit
