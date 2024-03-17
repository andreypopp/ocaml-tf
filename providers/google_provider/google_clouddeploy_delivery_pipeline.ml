(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__deploy_parameters = {
  match_target_labels : (string * string) list option; [@option]
      (** Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target). *)
  values : (string * string) list;
      (** Required. Values are deploy parameters in key-value pairs. *)
}
[@@deriving yojson_of]
(** Optional. The deploy parameters to use for the target in this stage. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy = {
  actions : string list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment__predeploy = {
  actions : string list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment = {
  percentages : float list;
      (** Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100. *)
  verify : bool option; [@option]
      (** Whether to run verify tests after each percentage deployment. *)
  postdeploy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    list;
  predeploy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    list;
}
[@@deriving yojson_of]
(** Configures the progressive based deployment for a Target. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy = {
  actions : string list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the postdeploy job of this phase. If this is not configured, postdeploy job will not be present for this phase. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy = {
  actions : string list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the predeploy job of this phase. If this is not configured, predeploy job will not be present for this phase. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs = {
  percentage : float;
      (** Required. Percentage deployment for the phase. *)
  phase_id : string;
      (** Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`. *)
  profiles : string list option; [@option]
      (** Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage. *)
  verify : bool option; [@option]
      (** Whether to run verify tests after the deployment. *)
  postdeploy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    list;
  predeploy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    list;
}
[@@deriving yojson_of]
(** Required. Configuration for each phase in the canary deployment in the order executed. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment = {
  phase_configs :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    list;
}
[@@deriving yojson_of]
(** Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__cloud_run = {
  automatic_traffic_control : bool option; [@option]
      (** Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments. *)
  canary_revision_tags : string list option; [@option]
      (** Optional. A list of tags that are added to the canary revision while the canary phase is in progress. *)
  prior_revision_tags : string list option; [@option]
      (** Optional. A list of tags that are added to the prior revision while the canary phase is in progress. *)
  stable_revision_tags : string list option; [@option]
      (** Optional. A list of tags that are added to the final stable revision when the stable phase is applied. *)
}
[@@deriving yojson_of]
(** Cloud Run runtime configuration. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh = {
  deployment : string;
      (** Required. Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service. *)
  http_route : string;
      (** Required. Name of the Gateway API HTTPRoute. *)
  route_update_wait_time : string option; [@option]
      (** Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time. *)
  service : string;  (** Required. Name of the Kubernetes Service. *)
  stable_cutback_duration : string option; [@option]
      (** Optional. The amount of time to migrate traffic back from the canary Service to the original Service during the stable phase deployment. If specified, must be between 15s and 3600s. If unspecified, there is no cutback time. *)
}
[@@deriving yojson_of]
(** Kubernetes Gateway API service mesh configuration. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking = {
  deployment : string;
      (** Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service. *)
  disable_pod_overprovisioning : bool option; [@option]
      (** Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster. *)
  service : string;  (** Required. Name of the Kubernetes Service. *)
}
[@@deriving yojson_of]
(** Kubernetes Service networking configuration. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes = {
  gateway_service_mesh :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    list;
  service_networking :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    list;
}
[@@deriving yojson_of]
(** Kubernetes runtime configuration. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config = {
  cloud_run :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    list;
  kubernetes :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    list;
}
[@@deriving yojson_of]
(** Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary = {
  canary_deployment :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment
    list;
  custom_canary_deployment :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment
    list;
  runtime_config :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config
    list;
}
[@@deriving yojson_of]
(** Canary deployment strategy provides progressive percentage based deployments to a Target. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard__postdeploy = {
  actions : string list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard__predeploy = {
  actions : string list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard = {
  verify : bool option; [@option]
      (** Whether to verify a deployment. *)
  postdeploy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard__postdeploy
    list;
  predeploy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard__predeploy
    list;
}
[@@deriving yojson_of]
(** Standard deployment strategy executes a single deploy and allows verifying the deployment. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy = {
  canary :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary
    list;
  standard :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard
    list;
}
[@@deriving yojson_of]
(** Optional. The strategy to use for a `Rollout` to this stage. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages = {
  profiles : string list option; [@option]
      (** Skaffold profiles to use when rendering the manifest for this stage's `Target`. *)
  target_id : string option; [@option]
      (** The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`. *)
  deploy_parameters :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__deploy_parameters
    list;
  strategy :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy
    list;
}
[@@deriving yojson_of]
(** Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow. *)

type google_clouddeploy_delivery_pipeline__serial_pipeline = {
  stages :
    google_clouddeploy_delivery_pipeline__serial_pipeline__stages
    list;
}
[@@deriving yojson_of]
(** SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. *)

type google_clouddeploy_delivery_pipeline__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_clouddeploy_delivery_pipeline__timeouts *)

type google_clouddeploy_delivery_pipeline__condition__targets_type_condition = {
  error_details : string;  (** error_details *)
  status : bool;  (** status *)
}
[@@deriving yojson_of]

type google_clouddeploy_delivery_pipeline__condition__targets_present_condition = {
  missing_targets : string list;  (** missing_targets *)
  status : bool;  (** status *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_clouddeploy_delivery_pipeline__condition__pipeline_ready_condition = {
  status : bool;  (** status *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_clouddeploy_delivery_pipeline__condition = {
  pipeline_ready_condition :
    google_clouddeploy_delivery_pipeline__condition__pipeline_ready_condition
    list;
      (** pipeline_ready_condition *)
  targets_present_condition :
    google_clouddeploy_delivery_pipeline__condition__targets_present_condition
    list;
      (** targets_present_condition *)
  targets_type_condition :
    google_clouddeploy_delivery_pipeline__condition__targets_type_condition
    list;
      (** targets_type_condition *)
}
[@@deriving yojson_of]

type google_clouddeploy_delivery_pipeline = {
  annotations : (string * string) list option; [@option]
      (** User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  description : string option; [@option]
      (** Description of the `DeliveryPipeline`. Max length is 255 characters. *)
  labels : (string * string) list option; [@option]
      (** Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string;
      (** Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\-]{0,62}. *)
  suspended : bool option; [@option]
      (** When suspended, no new releases or rollouts can be created, but in-progress ones will complete. *)
  serial_pipeline :
    google_clouddeploy_delivery_pipeline__serial_pipeline list;
  timeouts : google_clouddeploy_delivery_pipeline__timeouts option;
}
[@@deriving yojson_of]
(** google_clouddeploy_delivery_pipeline *)

let google_clouddeploy_delivery_pipeline ?annotations ?description
    ?labels ?suspended ?timeouts ~location ~name ~serial_pipeline
    __resource_id =
  let __resource_type = "google_clouddeploy_delivery_pipeline" in
  let __resource =
    {
      annotations;
      description;
      labels;
      location;
      name;
      suspended;
      serial_pipeline;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddeploy_delivery_pipeline __resource);
  ()
