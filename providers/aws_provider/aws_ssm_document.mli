(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_document__attachments_source

type aws_ssm_document__parameter = {
  default_value : string;  (** default_value *)
  description : string;  (** description *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_ssm_document

val aws_ssm_document :
  ?document_format:string ->
  ?permissions:(string * string) list ->
  ?tags:(string * string) list ->
  ?target_type:string ->
  ?version_name:string ->
  content:string ->
  document_type:string ->
  name:string ->
  attachments_source:aws_ssm_document__attachments_source list ->
  string ->
  unit
