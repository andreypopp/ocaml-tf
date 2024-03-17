(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_queue__outbound_caller_config
type aws_connect_queue

val aws_connect_queue :
  ?description:string ->
  ?max_contacts:float ->
  ?quick_connect_ids:string list ->
  ?tags:(string * string) list ->
  hours_of_operation_id:string ->
  instance_id:string ->
  name:string ->
  outbound_caller_config:
    aws_connect_queue__outbound_caller_config list ->
  string ->
  unit
