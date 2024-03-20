

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_quicksight_ingestion

val aws_quicksight_ingestion :
    ?aws_account_id:string prop ->
    data_set_id:string prop ->
    ingestion_id:string prop ->
    ingestion_type:string prop ->
    unit ->
    aws_quicksight_ingestion

val yojson_of_aws_quicksight_ingestion : aws_quicksight_ingestion -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  ingestion_id: string prop;
  ingestion_status: string prop;
  ingestion_type: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    data_set_id:string prop ->
    ingestion_id:string prop ->
    ingestion_type:string prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    data_set_id:string prop ->
    ingestion_id:string prop ->
    ingestion_type:string prop ->
    string ->
    t Tf_core.resource

