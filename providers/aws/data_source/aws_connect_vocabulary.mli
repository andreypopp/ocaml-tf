(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_connect_vocabulary

val aws_connect_vocabulary :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?vocabulary_id:string prop ->
  instance_id:string prop ->
  unit ->
  aws_connect_vocabulary

val yojson_of_aws_connect_vocabulary : aws_connect_vocabulary -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  content : string prop;
  failure_reason : string prop;
  id : string prop;
  instance_id : string prop;
  language_code : string prop;
  last_modified_time : string prop;
  name : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  vocabulary_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?vocabulary_id:string prop ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?vocabulary_id:string prop ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
