(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type data_delivery__cloudwatch_logs

val data_delivery__cloudwatch_logs :
  ?log_group:string prop -> unit -> data_delivery__cloudwatch_logs

type data_delivery__s3_destination

val data_delivery__s3_destination :
  ?bucket:string prop ->
  ?prefix:string prop ->
  unit ->
  data_delivery__s3_destination

type data_delivery

val data_delivery :
  cloudwatch_logs:data_delivery__cloudwatch_logs list ->
  s3_destination:data_delivery__s3_destination list ->
  unit ->
  data_delivery

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_evidently_project

val aws_evidently_project :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  data_delivery:data_delivery list ->
  unit ->
  aws_evidently_project

val yojson_of_aws_evidently_project : aws_evidently_project -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  data_delivery:data_delivery list ->
  string ->
  t
