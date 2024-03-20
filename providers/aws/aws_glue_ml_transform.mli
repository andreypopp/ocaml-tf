(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schema = {
  data_type : string prop;  (** data_type *)
  name : string prop;  (** name *)
}

type input_record_tables

val input_record_tables :
  ?catalog_id:string prop ->
  ?connection_name:string prop ->
  database_name:string prop ->
  table_name:string prop ->
  unit ->
  input_record_tables

type parameters__find_matches_parameters

val parameters__find_matches_parameters :
  ?accuracy_cost_trade_off:float prop ->
  ?enforce_provided_labels:bool prop ->
  ?precision_recall_trade_off:float prop ->
  ?primary_key_column_name:string prop ->
  unit ->
  parameters__find_matches_parameters

type parameters

val parameters :
  transform_type:string prop ->
  find_matches_parameters:parameters__find_matches_parameters list ->
  unit ->
  parameters

type aws_glue_ml_transform

val aws_glue_ml_transform :
  ?description:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?number_of_workers:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  input_record_tables:input_record_tables list ->
  parameters:parameters list ->
  unit ->
  aws_glue_ml_transform

val yojson_of_aws_glue_ml_transform : aws_glue_ml_transform -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  glue_version : string prop;
  id : string prop;
  label_count : float prop;
  max_capacity : float prop;
  max_retries : float prop;
  name : string prop;
  number_of_workers : float prop;
  role_arn : string prop;
  schema : schema list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  worker_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?number_of_workers:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  input_record_tables:input_record_tables list ->
  parameters:parameters list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?number_of_workers:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  input_record_tables:input_record_tables list ->
  parameters:parameters list ->
  string ->
  t Tf_core.resource
