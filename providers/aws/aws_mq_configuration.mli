(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_mq_configuration

val aws_mq_configuration :
  ?authentication_strategy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  data:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  name:string prop ->
  unit ->
  aws_mq_configuration

val yojson_of_aws_mq_configuration : aws_mq_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authentication_strategy : string prop;
  data : string prop;
  description : string prop;
  engine_type : string prop;
  engine_version : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_strategy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  data:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?authentication_strategy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  data:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
