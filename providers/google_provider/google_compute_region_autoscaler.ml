(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_autoscaler__autoscaling_policy__cpu_utilization = {
  predictive_method : string prop option; [@option]
      (** Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:

- NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics.

- OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand. *)
  target : float prop;
      (** The target CPU utilization that the autoscaler should maintain.
Must be a float value in the range (0, 1]. If not specified, the
default is 0.6.

If the CPU level is below the target utilization, the autoscaler
scales down the number of instances until it reaches the minimum
number of instances you specified or until the average CPU of
your instances reaches the target utilization.

If the average CPU is above the target utilization, the autoscaler
scales up until it reaches the maximum number of instances you
specified or until the average utilization reaches the target
utilization. *)
}
[@@deriving yojson_of]
(** Defines the CPU utilization policy that allows the autoscaler to
scale based on the average CPU utilization of a managed instance
group. *)

type google_compute_region_autoscaler__autoscaling_policy__load_balancing_utilization = {
  target : float prop;
      (** Fraction of backend capacity utilization (set in HTTP(s) load
balancing configuration) that autoscaler should maintain. Must
be a positive float value. If not defined, the default is 0.8. *)
}
[@@deriving yojson_of]
(** Configuration parameters of autoscaling based on a load balancer. *)

type google_compute_region_autoscaler__autoscaling_policy__metric = {
  name : string prop;
      (** The identifier (type) of the Stackdriver Monitoring metric.
The metric cannot have negative values.

The metric must have a value type of INT64 or DOUBLE. *)
  target : float prop option; [@option]
      (** The target value of the metric that autoscaler should
maintain. This must be a positive value. A utilization
metric scales number of virtual machines handling requests
to increase or decrease proportionally to the metric.

For example, a good metric to use as a utilizationTarget is
www.googleapis.com/compute/instance/network/received_bytes_count.
The autoscaler will work to keep this value constant for each
of the instances. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Defines how target utilization value is expressed for a
Stackdriver Monitoring metric. Possible values: [GAUGE, DELTA_PER_SECOND, DELTA_PER_MINUTE] *)
}
[@@deriving yojson_of]
(** Configuration parameters of autoscaling based on a custom metric. *)

type google_compute_region_autoscaler__autoscaling_policy__scale_in_control__max_scaled_in_replicas = {
  fixed : float prop option; [@option]
      (** Specifies a fixed number of VM instances. This must be a positive
integer. *)
  percent : float prop option; [@option]
      (** Specifies a percentage of instances between 0 to 100%, inclusive.
For example, specify 80 for 80%. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_region_autoscaler__autoscaling_policy__scale_in_control = {
  time_window_sec : float prop option; [@option]
      (** How long back autoscaling should look when computing recommendations
to include directives regarding slower scale down, as described above. *)
  max_scaled_in_replicas :
    google_compute_region_autoscaler__autoscaling_policy__scale_in_control__max_scaled_in_replicas
    list;
}
[@@deriving yojson_of]
(** Defines scale in controls to reduce the risk of response latency
and outages due to abrupt scale-in events *)

type google_compute_region_autoscaler__autoscaling_policy__scaling_schedules = {
  description : string prop option; [@option]
      (** A description of a scaling schedule. *)
  disabled : bool prop option; [@option]
      (** A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect. *)
  duration_sec : float prop;
      (** The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300. *)
  min_required_replicas : float prop;
      (** Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule. *)
  name : string prop;  (** name *)
  schedule : string prop;
      (** The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field). *)
  time_zone : string prop option; [@option]
      (** The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database. *)
}
[@@deriving yojson_of]
(** Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap. *)

type google_compute_region_autoscaler__autoscaling_policy = {
  cooldown_period : float prop option; [@option]
      (** The number of seconds that the autoscaler should wait before it
starts collecting information from a new instance. This prevents
the autoscaler from collecting information when the instance is
initializing, during which the collected usage would not be
reliable. The default time autoscaler waits is 60 seconds.

Virtual machine initialization times might vary because of
numerous factors. We recommend that you test how long an
instance may take to initialize. To do this, create an instance
and time the startup process. *)
  max_replicas : float prop;
      (** The maximum number of instances that the autoscaler can scale up
to. This is required when creating or updating an autoscaler. The
maximum number of replicas should not be lower than minimal number
of replicas. *)
  min_replicas : float prop;
      (** The minimum number of replicas that the autoscaler can scale down
to. This cannot be less than 0. If not provided, autoscaler will
choose a default value depending on maximum number of instances
allowed. *)
  mode : string prop option; [@option]
      (** Defines operating mode for this policy. *)
  cpu_utilization :
    google_compute_region_autoscaler__autoscaling_policy__cpu_utilization
    list;
  load_balancing_utilization :
    google_compute_region_autoscaler__autoscaling_policy__load_balancing_utilization
    list;
  metric :
    google_compute_region_autoscaler__autoscaling_policy__metric list;
  scale_in_control :
    google_compute_region_autoscaler__autoscaling_policy__scale_in_control
    list;
  scaling_schedules :
    google_compute_region_autoscaler__autoscaling_policy__scaling_schedules
    list;
}
[@@deriving yojson_of]
(** The configuration parameters for the autoscaling algorithm. You can
define one or more of the policies for an autoscaler: cpuUtilization,
customMetricUtilizations, and loadBalancingUtilization.

If none of these are specified, the default will be to autoscale based
on cpuUtilization to 0.6 or 60%. *)

type google_compute_region_autoscaler__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_region_autoscaler__timeouts *)

type google_compute_region_autoscaler = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** URL of the region where the instance group resides. *)
  target : string prop;
      (** URL of the managed instance group that this autoscaler will scale. *)
  autoscaling_policy :
    google_compute_region_autoscaler__autoscaling_policy list;
  timeouts : google_compute_region_autoscaler__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_autoscaler *)

type t = {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  target : string prop;
}

let google_compute_region_autoscaler ?description ?id ?project
    ?region ?timeouts ~name ~target ~autoscaling_policy __resource_id
    =
  let __resource_type = "google_compute_region_autoscaler" in
  let __resource =
    ({
       description;
       id;
       name;
       project;
       region;
       target;
       autoscaling_policy;
       timeouts;
     }
      : google_compute_region_autoscaler)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_autoscaler __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       target = Prop.computed __resource_type __resource_id "target";
     }
      : t)
  in
  __resource_attributes
