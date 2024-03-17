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
  unit
