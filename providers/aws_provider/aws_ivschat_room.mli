(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivschat_room__message_review_handler
type aws_ivschat_room__timeouts
type aws_ivschat_room

val aws_ivschat_room :
  ?id:string prop ->
  ?logging_configuration_identifiers:string prop list ->
  ?maximum_message_length:float prop ->
  ?maximum_message_rate_per_second:float prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ivschat_room__timeouts ->
  message_review_handler:
    aws_ivschat_room__message_review_handler list ->
  string ->
  unit
