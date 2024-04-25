(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sse_configuration

val sse_configuration :
  ?customer_managed_key_enabled:bool prop ->
  ?kms_key_arn:string prop ->
  unit ->
  sse_configuration

type aws_verifiedaccess_group

val aws_verifiedaccess_group :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?sse_configuration:sse_configuration list ->
  verifiedaccess_instance_id:string prop ->
  unit ->
  aws_verifiedaccess_group

val yojson_of_aws_verifiedaccess_group :
  aws_verifiedaccess_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_updated_time : string prop;
  owner : string prop;
  policy_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verifiedaccess_group_arn : string prop;
  verifiedaccess_group_id : string prop;
  verifiedaccess_instance_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?sse_configuration:sse_configuration list ->
  verifiedaccess_instance_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?sse_configuration:sse_configuration list ->
  verifiedaccess_instance_id:string prop ->
  string ->
  t Tf_core.resource
