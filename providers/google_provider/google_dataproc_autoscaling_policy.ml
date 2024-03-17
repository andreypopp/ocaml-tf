(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_autoscaling_policy__basic_algorithm__yarn_config = {
  graceful_decommission_timeout : string;
      (** Timeout for YARN graceful decommissioning of Node Managers. Specifies the
duration to wait for jobs to complete before forcefully removing workers
(and potentially interrupting jobs). Only applicable to downscaling operations.

Bounds: [0s, 1d]. *)
  scale_down_factor : float;
      (** Fraction of average pending memory in the last cooldown period for which to
remove workers. A scale-down factor of 1 will result in scaling down so that there
is no available memory remaining after the update (more aggressive scaling).
A scale-down factor of 0 disables removing workers, which can be beneficial for
autoscaling a single job.

Bounds: [0.0, 1.0]. *)
  scale_down_min_worker_fraction : float option; [@option]
      (** Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.
For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must
recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0
means the autoscaler will scale down on any recommended change.

Bounds: [0.0, 1.0]. Default: 0.0. *)
  scale_up_factor : float;
      (** Fraction of average pending memory in the last cooldown period for which to
add workers. A scale-up factor of 1.0 will result in scaling up so that there
is no pending memory remaining after the update (more aggressive scaling).
A scale-up factor closer to 0 will result in a smaller magnitude of scaling up
(less aggressive scaling).

Bounds: [0.0, 1.0]. *)
  scale_up_min_worker_fraction : float option; [@option]
      (** Minimum scale-up threshold as a fraction of total cluster size before scaling
occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler
must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of
0 means the autoscaler will scale up on any recommended change.

Bounds: [0.0, 1.0]. Default: 0.0. *)
}
[@@deriving yojson_of]
(** YARN autoscaling configuration. *)

type google_dataproc_autoscaling_policy__basic_algorithm = {
  cooldown_period : string option; [@option]
      (** Duration between scaling events. A scaling period starts after the
update operation from the previous event has completed.

Bounds: [2m, 1d]. Default: 2m. *)
  yarn_config :
    google_dataproc_autoscaling_policy__basic_algorithm__yarn_config
    list;
}
[@@deriving yojson_of]
(** Basic algorithm for autoscaling. *)

type google_dataproc_autoscaling_policy__secondary_worker_config = {
  max_instances : float option; [@option]
      (** Maximum number of instances for this group. Note that by default, clusters will not use
secondary workers. Required for secondary workers if the minimum secondary instances is set.
Bounds: [minInstances, ). Defaults to 0. *)
  min_instances : float option; [@option]
      (** Minimum number of instances for this group. Bounds: [0, maxInstances]. Defaults to 0. *)
  weight : float option; [@option]
      (** Weight for the instance group, which is used to determine the fraction of total workers
in the cluster from this instance group. For example, if primary workers have weight 2,
and secondary workers have weight 1, the cluster will have approximately 2 primary workers
for each secondary worker.

The cluster may not reach the specified balance if constrained by min/max bounds or other
autoscaling settings. For example, if maxInstances for secondary workers is 0, then only
primary workers will be added. The cluster can also be out of balance when created.

If weight is not set on any instance group, the cluster will default to equal weight for
all groups: the cluster will attempt to maintain an equal number of workers in each group
within the configured size bounds for each group. If weight is set for one group only,
the cluster will default to zero weight on the unset group. For example if weight is set
only on primary workers, the cluster will use primary workers only and no secondary workers. *)
}
[@@deriving yojson_of]
(** Describes how the autoscaler will operate for secondary workers. *)

type google_dataproc_autoscaling_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy__timeouts *)

type google_dataproc_autoscaling_policy__worker_config = {
  max_instances : float;
      (** Maximum number of instances for this group. *)
  min_instances : float option; [@option]
      (** Minimum number of instances for this group. Bounds: [2, maxInstances]. Defaults to 2. *)
  weight : float option; [@option]
      (** Weight for the instance group, which is used to determine the fraction of total workers
in the cluster from this instance group. For example, if primary workers have weight 2,
and secondary workers have weight 1, the cluster will have approximately 2 primary workers
for each secondary worker.

The cluster may not reach the specified balance if constrained by min/max bounds or other
autoscaling settings. For example, if maxInstances for secondary workers is 0, then only
primary workers will be added. The cluster can also be out of balance when created.

If weight is not set on any instance group, the cluster will default to equal weight for
all groups: the cluster will attempt to maintain an equal number of workers in each group
within the configured size bounds for each group. If weight is set for one group only,
the cluster will default to zero weight on the unset group. For example if weight is set
only on primary workers, the cluster will use primary workers only and no secondary workers. *)
}
[@@deriving yojson_of]
(** Describes how the autoscaler will operate for primary workers. *)

type google_dataproc_autoscaling_policy = {
  location : string option; [@option]
      (** The  location where the autoscaling policy should reside.
The default value is 'global'. *)
  policy_id : string;
      (** The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 50 characters. *)
  basic_algorithm :
    google_dataproc_autoscaling_policy__basic_algorithm list;
  secondary_worker_config :
    google_dataproc_autoscaling_policy__secondary_worker_config list;
  timeouts : google_dataproc_autoscaling_policy__timeouts option;
  worker_config :
    google_dataproc_autoscaling_policy__worker_config list;
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy *)

let google_dataproc_autoscaling_policy ?location ?timeouts ~policy_id
    ~basic_algorithm ~secondary_worker_config ~worker_config
    __resource_id =
  let __resource_type = "google_dataproc_autoscaling_policy" in
  let __resource =
    {
      location;
      policy_id;
      basic_algorithm;
      secondary_worker_config;
      timeouts;
      worker_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_autoscaling_policy __resource);
  ()
