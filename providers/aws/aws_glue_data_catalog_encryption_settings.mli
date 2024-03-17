(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_data_catalog_encryption_settings__data_catalog_encryption_settings__connection_password_encryption

type aws_glue_data_catalog_encryption_settings__data_catalog_encryption_settings__encryption_at_rest

type aws_glue_data_catalog_encryption_settings__data_catalog_encryption_settings

type aws_glue_data_catalog_encryption_settings
type t = private { catalog_id : string prop; id : string prop }

val aws_glue_data_catalog_encryption_settings :
  ?catalog_id:string prop ->
  ?id:string prop ->
  data_catalog_encryption_settings:
    aws_glue_data_catalog_encryption_settings__data_catalog_encryption_settings
    list ->
  string ->
  t
