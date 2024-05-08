(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type broker_engine_types__engine_versions = {
  name : string prop;  (** name *)
}

type broker_engine_types = {
  engine_type : string prop;  (** engine_type *)
  engine_versions : broker_engine_types__engine_versions list;
      [@default []] [@yojson_drop_default ( = )]
      (** engine_versions *)
}

type aws_mq_broker_engine_types

val aws_mq_broker_engine_types :
  ?engine_type:string prop ->
  ?id:string prop ->
  unit ->
  aws_mq_broker_engine_types

val yojson_of_aws_mq_broker_engine_types :
  aws_mq_broker_engine_types -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  broker_engine_types : broker_engine_types list prop;
  engine_type : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?engine_type:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?engine_type:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
