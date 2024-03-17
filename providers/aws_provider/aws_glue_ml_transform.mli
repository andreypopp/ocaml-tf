(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_ml_transform__input_record_tables
type aws_glue_ml_transform__parameters__find_matches_parameters
type aws_glue_ml_transform__parameters

type aws_glue_ml_transform__schema = {
  data_type : string prop;  (** data_type *)
  name : string prop;  (** name *)
}

type aws_glue_ml_transform

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
  schema : aws_glue_ml_transform__schema list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  worker_type : string prop;
}

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
  input_record_tables:aws_glue_ml_transform__input_record_tables list ->
  parameters:aws_glue_ml_transform__parameters list ->
  string ->
  t
