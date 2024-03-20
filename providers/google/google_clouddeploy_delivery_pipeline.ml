(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serial_pipeline__stages__deploy_parameters = {
  match_target_labels : (string * string prop) list option; [@option]
      (** Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target). *)
  values : (string * string prop) list;
      (** Required. Values are deploy parameters in key-value pairs. *)
}
[@@deriving yojson_of]
(** Optional. The deploy parameters to use for the target in this stage. *)

type serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy = {
  actions : string prop list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present. *)

type serial_pipeline__stages__strategy__canary__canary_deployment__predeploy = {
  actions : string prop list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present. *)

type serial_pipeline__stages__strategy__canary__canary_deployment = {
  percentages : float prop list;
      (** Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100. *)
  verify : bool prop option; [@option]
      (** Whether to run verify tests after each percentage deployment. *)
  postdeploy :
    serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    list;
  predeploy :
    serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    list;
}
[@@deriving yojson_of]
(** Configures the progressive based deployment for a Target. *)

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy = {
  actions : string prop list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the postdeploy job of this phase. If this is not configured, postdeploy job will not be present for this phase. *)

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy = {
  actions : string prop list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the predeploy job of this phase. If this is not configured, predeploy job will not be present for this phase. *)

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs = {
  percentage : float prop;
      (** Required. Percentage deployment for the phase. *)
  phase_id : string prop;
      (** Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`. *)
  profiles : string prop list option; [@option]
      (** Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage. *)
  verify : bool prop option; [@option]
      (** Whether to run verify tests after the deployment. *)
  postdeploy :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    list;
  predeploy :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    list;
}
[@@deriving yojson_of]
(** Required. Configuration for each phase in the canary deployment in the order executed. *)

type serial_pipeline__stages__strategy__canary__custom_canary_deployment = {
  phase_configs :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    list;
}
[@@deriving yojson_of]
(** Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments. *)

type serial_pipeline__stages__strategy__canary__runtime_config__cloud_run = {
  automatic_traffic_control : bool prop option; [@option]
      (** Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments. *)
  canary_revision_tags : string prop list option; [@option]
      (** Optional. A list of tags that are added to the canary revision while the canary phase is in progress. *)
  prior_revision_tags : string prop list option; [@option]
      (** Optional. A list of tags that are added to the prior revision while the canary phase is in progress. *)
  stable_revision_tags : string prop list option; [@option]
      (** Optional. A list of tags that are added to the final stable revision when the stable phase is applied. *)
}
[@@deriving yojson_of]
(** Cloud Run runtime configuration. *)

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh = {
  deployment : string prop;
      (** Required. Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service. *)
  http_route : string prop;
      (** Required. Name of the Gateway API HTTPRoute. *)
  route_update_wait_time : string prop option; [@option]
      (** Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time. *)
  service : string prop;
      (** Required. Name of the Kubernetes Service. *)
  stable_cutback_duration : string prop option; [@option]
      (** Optional. The amount of time to migrate traffic back from the canary Service to the original Service during the stable phase deployment. If specified, must be between 15s and 3600s. If unspecified, there is no cutback time. *)
}
[@@deriving yojson_of]
(** Kubernetes Gateway API service mesh configuration. *)

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking = {
  deployment : string prop;
      (** Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service. *)
  disable_pod_overprovisioning : bool prop option; [@option]
      (** Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster. *)
  service : string prop;
      (** Required. Name of the Kubernetes Service. *)
}
[@@deriving yojson_of]
(** Kubernetes Service networking configuration. *)

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes = {
  gateway_service_mesh :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    list;
  service_networking :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    list;
}
[@@deriving yojson_of]
(** Kubernetes runtime configuration. *)

type serial_pipeline__stages__strategy__canary__runtime_config = {
  cloud_run :
    serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    list;
  kubernetes :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    list;
}
[@@deriving yojson_of]
(** Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment. *)

type serial_pipeline__stages__strategy__canary = {
  canary_deployment :
    serial_pipeline__stages__strategy__canary__canary_deployment list;
  custom_canary_deployment :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment
    list;
  runtime_config :
    serial_pipeline__stages__strategy__canary__runtime_config list;
}
[@@deriving yojson_of]
(** Canary deployment strategy provides progressive percentage based deployments to a Target. *)

type serial_pipeline__stages__strategy__standard__postdeploy = {
  actions : string prop list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present. *)

type serial_pipeline__stages__strategy__standard__predeploy = {
  actions : string prop list option; [@option]
      (** Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present. *)

type serial_pipeline__stages__strategy__standard = {
  verify : bool prop option; [@option]
      (** Whether to verify a deployment. *)
  postdeploy :
    serial_pipeline__stages__strategy__standard__postdeploy list;
  predeploy :
    serial_pipeline__stages__strategy__standard__predeploy list;
}
[@@deriving yojson_of]
(** Standard deployment strategy executes a single deploy and allows verifying the deployment. *)

type serial_pipeline__stages__strategy = {
  canary : serial_pipeline__stages__strategy__canary list;
  standard : serial_pipeline__stages__strategy__standard list;
}
[@@deriving yojson_of]
(** Optional. The strategy to use for a `Rollout` to this stage. *)

type serial_pipeline__stages = {
  profiles : string prop list option; [@option]
      (** Skaffold profiles to use when rendering the manifest for this stage's `Target`. *)
  target_id : string prop option; [@option]
      (** The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`. *)
  deploy_parameters :
    serial_pipeline__stages__deploy_parameters list;
  strategy : serial_pipeline__stages__strategy list;
}
[@@deriving yojson_of]
(** Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow. *)

type serial_pipeline = { stages : serial_pipeline__stages list }
[@@deriving yojson_of]
(** SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type condition__targets_type_condition = {
  error_details : string prop;  (** error_details *)
  status : bool prop;  (** status *)
}
[@@deriving yojson_of]

type condition__targets_present_condition = {
  missing_targets : string prop list;  (** missing_targets *)
  status : bool prop;  (** status *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type condition__pipeline_ready_condition = {
  status : bool prop;  (** status *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type condition = {
  pipeline_ready_condition :
    condition__pipeline_ready_condition list;
      (** pipeline_ready_condition *)
  targets_present_condition :
    condition__targets_present_condition list;
      (** targets_present_condition *)
  targets_type_condition : condition__targets_type_condition list;
      (** targets_type_condition *)
}
[@@deriving yojson_of]

type google_clouddeploy_delivery_pipeline = {
  annotations : (string * string prop) list option; [@option]
      (** User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  description : string prop option; [@option]
      (** Description of the `DeliveryPipeline`. Max length is 255 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\-]{0,62}. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  suspended : bool prop option; [@option]
      (** When suspended, no new releases or rollouts can be created, but in-progress ones will complete. *)
  serial_pipeline : serial_pipeline list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_clouddeploy_delivery_pipeline *)

let serial_pipeline__stages__deploy_parameters ?match_target_labels
    ~values () : serial_pipeline__stages__deploy_parameters =
  { match_target_labels; values }

let serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__canary_deployment
    ?verify ~percentages ~postdeploy ~predeploy () :
    serial_pipeline__stages__strategy__canary__canary_deployment =
  { percentages; verify; postdeploy; predeploy }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    ?profiles ?verify ~percentage ~phase_id ~postdeploy ~predeploy ()
    :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    =
  { percentage; phase_id; profiles; verify; postdeploy; predeploy }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment
    ~phase_configs () :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment
    =
  { phase_configs }

let serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    ?automatic_traffic_control ?canary_revision_tags
    ?prior_revision_tags ?stable_revision_tags () :
    serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    =
  {
    automatic_traffic_control;
    canary_revision_tags;
    prior_revision_tags;
    stable_revision_tags;
  }

let serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    ?route_update_wait_time ?stable_cutback_duration ~deployment
    ~http_route ~service () :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    =
  {
    deployment;
    http_route;
    route_update_wait_time;
    service;
    stable_cutback_duration;
  }

let serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    ?disable_pod_overprovisioning ~deployment ~service () :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    =
  { deployment; disable_pod_overprovisioning; service }

let serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    ~gateway_service_mesh ~service_networking () :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    =
  { gateway_service_mesh; service_networking }

let serial_pipeline__stages__strategy__canary__runtime_config
    ~cloud_run ~kubernetes () :
    serial_pipeline__stages__strategy__canary__runtime_config =
  { cloud_run; kubernetes }

let serial_pipeline__stages__strategy__canary ~canary_deployment
    ~custom_canary_deployment ~runtime_config () :
    serial_pipeline__stages__strategy__canary =
  { canary_deployment; custom_canary_deployment; runtime_config }

let serial_pipeline__stages__strategy__standard__postdeploy ?actions
    () : serial_pipeline__stages__strategy__standard__postdeploy =
  { actions }

let serial_pipeline__stages__strategy__standard__predeploy ?actions
    () : serial_pipeline__stages__strategy__standard__predeploy =
  { actions }

let serial_pipeline__stages__strategy__standard ?verify ~postdeploy
    ~predeploy () : serial_pipeline__stages__strategy__standard =
  { verify; postdeploy; predeploy }

let serial_pipeline__stages__strategy ~canary ~standard () :
    serial_pipeline__stages__strategy =
  { canary; standard }

let serial_pipeline__stages ?profiles ?target_id ~deploy_parameters
    ~strategy () : serial_pipeline__stages =
  { profiles; target_id; deploy_parameters; strategy }

let serial_pipeline ~stages () : serial_pipeline = { stages }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_clouddeploy_delivery_pipeline ?annotations ?description
    ?id ?labels ?project ?suspended ?timeouts ~location ~name
    ~serial_pipeline () : google_clouddeploy_delivery_pipeline =
  {
    annotations;
    description;
    id;
    labels;
    location;
    name;
    project;
    suspended;
    serial_pipeline;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  condition : condition list prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  suspended : bool prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?description ?id ?labels ?project ?suspended
    ?timeouts ~location ~name ~serial_pipeline __id =
  let __type = "google_clouddeploy_delivery_pipeline" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       condition = Prop.computed __type __id "condition";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       suspended = Prop.computed __type __id "suspended";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddeploy_delivery_pipeline
        (google_clouddeploy_delivery_pipeline ?annotations
           ?description ?id ?labels ?project ?suspended ?timeouts
           ~location ~name ~serial_pipeline ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?labels
    ?project ?suspended ?timeouts ~location ~name ~serial_pipeline
    __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?labels ?project ?suspended
      ?timeouts ~location ~name ~serial_pipeline __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
