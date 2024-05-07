(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type basic_algorithm__yarn_config

val basic_algorithm__yarn_config :
  ?scale_down_min_worker_fraction:float prop ->
  ?scale_up_min_worker_fraction:float prop ->
  graceful_decommission_timeout:string prop ->
  scale_down_factor:float prop ->
  scale_up_factor:float prop ->
  unit ->
  basic_algorithm__yarn_config

type basic_algorithm

val basic_algorithm :
  ?cooldown_period:string prop ->
  yarn_config:basic_algorithm__yarn_config list ->
  unit ->
  basic_algorithm

type secondary_worker_config

val secondary_worker_config :
  ?max_instances:float prop ->
  ?min_instances:float prop ->
  ?weight:float prop ->
  unit ->
  secondary_worker_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type worker_config

val worker_config :
  ?min_instances:float prop ->
  ?weight:float prop ->
  max_instances:float prop ->
  unit ->
  worker_config

type google_dataproc_autoscaling_policy

val google_dataproc_autoscaling_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?basic_algorithm:basic_algorithm list ->
  ?secondary_worker_config:secondary_worker_config list ->
  ?timeouts:timeouts ->
  ?worker_config:worker_config list ->
  policy_id:string prop ->
  unit ->
  google_dataproc_autoscaling_policy

val yojson_of_google_dataproc_autoscaling_policy :
  google_dataproc_autoscaling_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_id : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?basic_algorithm:basic_algorithm list ->
  ?secondary_worker_config:secondary_worker_config list ->
  ?timeouts:timeouts ->
  ?worker_config:worker_config list ->
  policy_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?basic_algorithm:basic_algorithm list ->
  ?secondary_worker_config:secondary_worker_config list ->
  ?timeouts:timeouts ->
  ?worker_config:worker_config list ->
  policy_id:string prop ->
  string ->
  t Tf_core.resource
