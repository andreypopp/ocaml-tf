(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_custom_db_engine_version__timeouts
type aws_rds_custom_db_engine_version

val aws_rds_custom_db_engine_version :
  ?database_installation_files_s3_bucket_name:string prop ->
  ?database_installation_files_s3_prefix:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?manifest:string prop ->
  ?manifest_hash:string prop ->
  ?source_image_id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_rds_custom_db_engine_version__timeouts ->
  engine:string prop ->
  engine_version:string prop ->
  string ->
  unit
