(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_catalog_encryption_settings__encryption_at_rest = {
  catalog_encryption_mode : string prop;
      (** catalog_encryption_mode *)
  sse_aws_kms_key_id : string prop;  (** sse_aws_kms_key_id *)
}

type data_catalog_encryption_settings__connection_password_encryption = {
  aws_kms_key_id : string prop;  (** aws_kms_key_id *)
  return_connection_password_encrypted : bool prop;
      (** return_connection_password_encrypted *)
}

type data_catalog_encryption_settings = {
  connection_password_encryption :
    data_catalog_encryption_settings__connection_password_encryption
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** connection_password_encryption *)
  encryption_at_rest :
    data_catalog_encryption_settings__encryption_at_rest list;
      [@default []] [@yojson_drop_default ( = )]
      (** encryption_at_rest *)
}

type aws_glue_data_catalog_encryption_settings

val aws_glue_data_catalog_encryption_settings :
  ?id:string prop ->
  catalog_id:string prop ->
  unit ->
  aws_glue_data_catalog_encryption_settings

val yojson_of_aws_glue_data_catalog_encryption_settings :
  aws_glue_data_catalog_encryption_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  catalog_id : string prop;
  data_catalog_encryption_settings :
    data_catalog_encryption_settings list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  catalog_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  catalog_id:string prop ->
  string ->
  t Tf_core.resource
