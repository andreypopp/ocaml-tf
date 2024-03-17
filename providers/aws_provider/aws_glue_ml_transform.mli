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
  unit
