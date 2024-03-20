(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_connect_contact_flow_module

val aws_connect_contact_flow_module :
  ?contact_flow_module_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  unit ->
  aws_connect_contact_flow_module

val yojson_of_aws_connect_contact_flow_module :
  aws_connect_contact_flow_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  contact_flow_module_id : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  state : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?contact_flow_module_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?contact_flow_module_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
