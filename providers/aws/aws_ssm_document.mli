(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter = {
  default_value : string prop;  (** default_value *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type attachments_source

val attachments_source :
  ?name:string prop ->
  key:string prop ->
  values:string prop list ->
  unit ->
  attachments_source

type aws_ssm_document

val aws_ssm_document :
  ?document_format:string prop ->
  ?id:string prop ->
  ?permissions:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_type:string prop ->
  ?version_name:string prop ->
  ?attachments_source:attachments_source list ->
  content:string prop ->
  document_type:string prop ->
  name:string prop ->
  unit ->
  aws_ssm_document

val yojson_of_aws_ssm_document : aws_ssm_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  content : string prop;
  created_date : string prop;
  default_version : string prop;
  description : string prop;
  document_format : string prop;
  document_type : string prop;
  document_version : string prop;
  hash : string prop;
  hash_type : string prop;
  id : string prop;
  latest_version : string prop;
  name : string prop;
  owner : string prop;
  parameter : parameter list prop;
  permissions : (string * string) list prop;
  platform_types : string list prop;
  schema_version : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_type : string prop;
  version_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?document_format:string prop ->
  ?id:string prop ->
  ?permissions:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_type:string prop ->
  ?version_name:string prop ->
  ?attachments_source:attachments_source list ->
  content:string prop ->
  document_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?document_format:string prop ->
  ?id:string prop ->
  ?permissions:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_type:string prop ->
  ?version_name:string prop ->
  ?attachments_source:attachments_source list ->
  content:string prop ->
  document_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
