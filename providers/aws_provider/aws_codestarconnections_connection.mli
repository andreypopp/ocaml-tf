(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarconnections_connection

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

val aws_codestarconnections_connection :
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t
