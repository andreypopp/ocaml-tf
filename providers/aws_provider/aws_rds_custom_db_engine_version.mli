(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_custom_db_engine_version__timeouts
type aws_rds_custom_db_engine_version

val aws_rds_custom_db_engine_version :
  ?database_installation_files_s3_bucket_name:string ->
  ?database_installation_files_s3_prefix:string ->
  ?description:string ->
  ?filename:string ->
  ?manifest:string ->
  ?manifest_hash:string ->
  ?source_image_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_rds_custom_db_engine_version__timeouts ->
  engine:string ->
  engine_version:string ->
  string ->
  unit
