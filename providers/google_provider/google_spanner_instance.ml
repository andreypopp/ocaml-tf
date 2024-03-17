(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_spanner_instance__autoscaling_config__autoscaling_limits = {
  max_nodes : float option; [@option]
      (** Specifies maximum number of nodes allocated to the instance. If set, this number
should be greater than or equal to min_nodes. *)
  max_processing_units : float option; [@option]
      (** Specifies maximum number of processing units allocated to the instance.
If set, this number should be multiples of 1000 and be greater than or equal to
min_processing_units. *)
  min_nodes : float option; [@option]
      (** Specifies number of nodes allocated to the instance. If set, this number
should be greater than or equal to 1. *)
  min_processing_units : float option; [@option]
      (** Specifies minimum number of processing units allocated to the instance.
If set, this number should be multiples of 1000. *)
}
[@@deriving yojson_of]
(** Defines scale in controls to reduce the risk of response latency
and outages due to abrupt scale-in events. Users can define the minimum and
maximum compute capacity allocated to the instance, and the autoscaler will
only scale within that range. Users can either use nodes or processing
units to specify the limits, but should use the same unit to set both the
min_limit and max_limit. *)

type google_spanner_instance__autoscaling_config__autoscaling_targets = {
  high_priority_cpu_utilization_percent : float option; [@option]
      (** Specifies the target high priority cpu utilization percentage that the autoscaler
should be trying to achieve for the instance.
This number is on a scale from 0 (no utilization) to 100 (full utilization).. *)
  storage_utilization_percent : float option; [@option]
      (** Specifies the target storage utilization percentage that the autoscaler
should be trying to achieve for the instance.
This number is on a scale from 0 (no utilization) to 100 (full utilization). *)
}
[@@deriving yojson_of]
(** Defines scale in controls to reduce the risk of response latency
and outages due to abrupt scale-in events *)

type google_spanner_instance__autoscaling_config = {
  autoscaling_limits :
    google_spanner_instance__autoscaling_config__autoscaling_limits
    list;
  autoscaling_targets :
    google_spanner_instance__autoscaling_config__autoscaling_targets
    list;
}
[@@deriving yojson_of]
(** The autoscaling configuration. Autoscaling is enabled if this field is set.
When autoscaling is enabled, num_nodes and processing_units are treated as,
OUTPUT_ONLY fields and reflect the current compute capacity allocated to
the instance. *)

type google_spanner_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_spanner_instance__timeouts *)

type google_spanner_instance = {
  config : string;
      (** The name of the instance's configuration (similar but not
quite the same as a region) which defines the geographic placement and
replication of your databases in this instance. It determines where your data
is stored. Values are typically of the form 'regional-europe-west1' , 'us-central' etc.
In order to obtain a valid list please consult the
[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances). *)
  display_name : string;
      (** The descriptive name for this instance as it appears in UIs. Must be
unique per project and between 4 and 30 characters in length. *)
  force_destroy : bool option; [@option]
      (** When deleting a spanner instance, this boolean option will delete all backups of this instance.
This must be set to true if you created a backup manually in the console. *)
  labels : (string * string) list option; [@option]
      (** An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  autoscaling_config :
    google_spanner_instance__autoscaling_config list;
  timeouts : google_spanner_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_spanner_instance *)

let google_spanner_instance ?force_destroy ?labels ?timeouts ~config
    ~display_name ~autoscaling_config __resource_id =
  let __resource_type = "google_spanner_instance" in
  let __resource =
    {
      config;
      display_name;
      force_destroy;
      labels;
      autoscaling_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_spanner_instance __resource);
  ()
