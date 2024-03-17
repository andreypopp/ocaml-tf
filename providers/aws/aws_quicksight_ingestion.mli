(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_ingestion

type t = private {
  arn : string prop;
  aws_account_id : string prop;
  data_set_id : string prop;
  id : string prop;
  ingestion_id : string prop;
  ingestion_status : string prop;
  ingestion_type : string prop;
}

val aws_quicksight_ingestion :
  ?aws_account_id:string prop ->
  data_set_id:string prop ->
  ingestion_id:string prop ->
  ingestion_type:string prop ->
  string ->
  t
