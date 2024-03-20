(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codestarconnections_connection

val aws_codestarconnections_connection :
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_codestarconnections_connection

val yojson_of_aws_codestarconnections_connection :
  aws_codestarconnections_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  connection_status : string prop;
  host_arn : string prop;
  id : string prop;
  name : string prop;
  provider_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
