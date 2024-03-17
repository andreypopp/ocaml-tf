(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_document__attachments_source

type aws_ssm_document__parameter = {
  default_value : string prop;  (** default_value *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_ssm_document

type t = private {
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
  parameter : aws_ssm_document__parameter list prop;
  permissions : (string * string) list prop;
  platform_types : string list prop;
  schema_version : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_type : string prop;
  version_name : string prop;
}

val aws_ssm_document :
  ?document_format:string prop ->
  ?id:string prop ->
  ?permissions:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_type:string prop ->
  ?version_name:string prop ->
  content:string prop ->
  document_type:string prop ->
  name:string prop ->
  attachments_source:aws_ssm_document__attachments_source list ->
  string ->
  t
