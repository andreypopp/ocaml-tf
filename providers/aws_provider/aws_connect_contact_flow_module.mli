(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_contact_flow_module

type t = private {
  arn : string prop;
  contact_flow_module_id : string prop;
  content : string prop;
  content_hash : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_connect_contact_flow_module :
  ?content:string prop ->
  ?content_hash:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t
