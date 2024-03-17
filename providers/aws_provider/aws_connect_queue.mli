(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_queue__outbound_caller_config
type aws_connect_queue

val aws_connect_queue :
  ?description:string prop ->
  ?id:string prop ->
  ?max_contacts:float prop ->
  ?quick_connect_ids:string prop list ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  hours_of_operation_id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  outbound_caller_config:
    aws_connect_queue__outbound_caller_config list ->
  string ->
  unit
