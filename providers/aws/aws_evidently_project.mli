(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_evidently_project__data_delivery__cloudwatch_logs
type aws_evidently_project__data_delivery__s3_destination
type aws_evidently_project__data_delivery
type aws_evidently_project__timeouts
type aws_evidently_project

type t = private {
  active_experiment_count : float prop;
  active_launch_count : float prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  experiment_count : float prop;
  feature_count : float prop;
  id : string prop;
  last_updated_time : string prop;
  launch_count : float prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_evidently_project :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_evidently_project__timeouts ->
  name:string prop ->
  data_delivery:aws_evidently_project__data_delivery list ->
  string ->
  t
