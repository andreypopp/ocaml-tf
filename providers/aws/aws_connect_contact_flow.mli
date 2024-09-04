(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_connect_contact_flow

val aws_connect_contact_flow :
  ?content:string prop ->
  ?content_hash:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  instance_id:string prop ->
  name:string prop ->
  unit ->
  aws_connect_contact_flow

val yojson_of_aws_connect_contact_flow :
  aws_connect_contact_flow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  contact_flow_id : string prop;
  content : string prop;
  content_hash : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content:string prop ->
  ?content_hash:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?content:string prop ->
  ?content_hash:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
