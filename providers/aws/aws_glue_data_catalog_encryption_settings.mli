(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_catalog_encryption_settings__connection_password_encryption

val data_catalog_encryption_settings__connection_password_encryption :
  ?aws_kms_key_id:string prop ->
  return_connection_password_encrypted:bool prop ->
  unit ->
  data_catalog_encryption_settings__connection_password_encryption

type data_catalog_encryption_settings__encryption_at_rest

val data_catalog_encryption_settings__encryption_at_rest :
  ?sse_aws_kms_key_id:string prop ->
  catalog_encryption_mode:string prop ->
  unit ->
  data_catalog_encryption_settings__encryption_at_rest

type data_catalog_encryption_settings

val data_catalog_encryption_settings :
  connection_password_encryption:
    data_catalog_encryption_settings__connection_password_encryption
    list ->
  encryption_at_rest:
    data_catalog_encryption_settings__encryption_at_rest list ->
  unit ->
  data_catalog_encryption_settings

type aws_glue_data_catalog_encryption_settings

val aws_glue_data_catalog_encryption_settings :
  ?catalog_id:string prop ->
  ?id:string prop ->
  data_catalog_encryption_settings:
    data_catalog_encryption_settings list ->
  unit ->
  aws_glue_data_catalog_encryption_settings

val yojson_of_aws_glue_data_catalog_encryption_settings :
  aws_glue_data_catalog_encryption_settings -> json

(** RESOURCE REGISTRATION *)

type t = private { catalog_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  data_catalog_encryption_settings:
    data_catalog_encryption_settings list ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  data_catalog_encryption_settings:
    data_catalog_encryption_settings list ->
  string ->
  t Tf_core.resource
