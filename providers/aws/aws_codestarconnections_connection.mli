(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codestarconnections_connection

val aws_codestarconnections_connection :
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_codestarconnections_connection

val yojson_of_aws_codestarconnections_connection :
  aws_codestarconnections_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  connection_status : string prop;
  host_arn : string prop;
  id : string prop;
  name : string prop;
  provider_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
