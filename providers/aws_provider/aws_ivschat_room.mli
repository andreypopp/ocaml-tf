(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivschat_room__message_review_handler
type aws_ivschat_room__timeouts
type aws_ivschat_room

val aws_ivschat_room :
  ?logging_configuration_identifiers:string list ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_ivschat_room__timeouts ->
  message_review_handler:
    aws_ivschat_room__message_review_handler list ->
  string ->
  unit
