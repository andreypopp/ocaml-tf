(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type outbound_caller_config = {
  outbound_caller_id_name : string prop;
      (** outbound_caller_id_name *)
  outbound_caller_id_number_id : string prop;
      (** outbound_caller_id_number_id *)
  outbound_flow_id : string prop;  (** outbound_flow_id *)
}

type aws_connect_queue

val aws_connect_queue :
  ?id:string prop ->
  ?name:string prop ->
  ?queue_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  instance_id:string prop ->
  unit ->
  aws_connect_queue

val yojson_of_aws_connect_queue : aws_connect_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  max_contacts : float prop;
  name : string prop;
  outbound_caller_config : outbound_caller_config list prop;
  queue_id : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?queue_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?queue_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
