(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_autoscaling_policy__basic_algorithm__yarn_config
type google_dataproc_autoscaling_policy__basic_algorithm
type google_dataproc_autoscaling_policy__secondary_worker_config
type google_dataproc_autoscaling_policy__timeouts
type google_dataproc_autoscaling_policy__worker_config
type google_dataproc_autoscaling_policy

val google_dataproc_autoscaling_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:google_dataproc_autoscaling_policy__timeouts ->
  policy_id:string prop ->
  basic_algorithm:
    google_dataproc_autoscaling_policy__basic_algorithm list ->
  secondary_worker_config:
    google_dataproc_autoscaling_policy__secondary_worker_config list ->
  worker_config:
    google_dataproc_autoscaling_policy__worker_config list ->
  string ->
  unit
