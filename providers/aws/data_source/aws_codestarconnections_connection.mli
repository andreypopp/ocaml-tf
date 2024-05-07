(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codestarconnections_connection

val aws_codestarconnections_connection :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
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
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
