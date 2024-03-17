(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_ml_transform__input_record_tables
type aws_glue_ml_transform__parameters__find_matches_parameters
type aws_glue_ml_transform__parameters

type aws_glue_ml_transform__schema = {
  data_type : string;  (** data_type *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_glue_ml_transform

val aws_glue_ml_transform :
  ?description:string ->
  ?max_retries:float ->
  ?number_of_workers:float ->
  ?tags:(string * string) list ->
  ?timeout:float ->
  ?worker_type:string ->
  name:string ->
  role_arn:string ->
  input_record_tables:aws_glue_ml_transform__input_record_tables list ->
  parameters:aws_glue_ml_transform__parameters list ->
  string ->
  unit
