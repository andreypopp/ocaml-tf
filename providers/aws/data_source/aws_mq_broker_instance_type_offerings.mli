(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type broker_instance_options__availability_zones = {
  name : string prop;  (** name *)
}

type broker_instance_options = {
  availability_zones :
    broker_instance_options__availability_zones list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** availability_zones *)
  engine_type : string prop;  (** engine_type *)
  host_instance_type : string prop;  (** host_instance_type *)
  storage_type : string prop;  (** storage_type *)
  supported_deployment_modes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** supported_deployment_modes *)
  supported_engine_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** supported_engine_versions *)
}

type aws_mq_broker_instance_type_offerings

val aws_mq_broker_instance_type_offerings :
  ?engine_type:string prop ->
  ?host_instance_type:string prop ->
  ?id:string prop ->
  ?storage_type:string prop ->
  unit ->
  aws_mq_broker_instance_type_offerings

val yojson_of_aws_mq_broker_instance_type_offerings :
  aws_mq_broker_instance_type_offerings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  broker_instance_options : broker_instance_options list prop;
  engine_type : string prop;
  host_instance_type : string prop;
  id : string prop;
  storage_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?engine_type:string prop ->
  ?host_instance_type:string prop ->
  ?id:string prop ->
  ?storage_type:string prop ->
  string ->
  t

val make :
  ?engine_type:string prop ->
  ?host_instance_type:string prop ->
  ?id:string prop ->
  ?storage_type:string prop ->
  string ->
  t Tf_core.resource
