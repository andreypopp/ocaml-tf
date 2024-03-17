(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_clouddeploy_target__anthos_cluster = {
  membership : string prop option; [@option]
      (** Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`. *)
}
[@@deriving yojson_of]
(** Information specifying an Anthos Cluster. *)

type google_clouddeploy_target__execution_configs = {
  artifact_storage : string prop option; [@option]
      (** Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket (gs://my-bucket) or a path within a bucket (gs://my-bucket/my-dir). If unspecified, a default bucket located in the same region will be used. *)
  execution_timeout : string prop option; [@option]
      (** Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used. *)
  service_account : string prop option; [@option]
      (** Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used. *)
  usages : string prop list;
      (** Required. Usages when this configuration should be applied. *)
  worker_pool : string prop option; [@option]
      (** Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used. *)
}
[@@deriving yojson_of]
(** Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`. *)

type google_clouddeploy_target__gke = {
  cluster : string prop option; [@option]
      (** Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}. *)
  internal_ip : bool prop option; [@option]
      (** Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept). *)
}
[@@deriving yojson_of]
(** Information specifying a GKE Cluster. *)

type google_clouddeploy_target__multi_target = {
  target_ids : string prop list;
      (** Required. The target_ids of this multiTarget. *)
}
[@@deriving yojson_of]
(** Information specifying a multiTarget. *)

type google_clouddeploy_target__run = {
  location : string prop;
      (** Required. The location where the Cloud Run Service should be located. Format is `projects/{project}/locations/{location}`. *)
}
[@@deriving yojson_of]
(** Information specifying a Cloud Run deployment target. *)

type google_clouddeploy_target__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_clouddeploy_target__timeouts *)

type google_clouddeploy_target = {
  annotations : (string * string prop) list option; [@option]
      (** Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  deploy_parameters : (string * string prop) list option; [@option]
      (** Optional. The deploy parameters to use for this target. *)
  description : string prop option; [@option]
      (** Optional. Description of the `Target`. Max length is 255 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Name of the `Target`. Format is [a-z][a-z0-9\-]{0,62}. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  require_approval : bool prop option; [@option]
      (** Optional. Whether or not the `Target` requires approval. *)
  anthos_cluster : google_clouddeploy_target__anthos_cluster list;
  execution_configs :
    google_clouddeploy_target__execution_configs list;
  gke : google_clouddeploy_target__gke list;
  multi_target : google_clouddeploy_target__multi_target list;
  run : google_clouddeploy_target__run list;
  timeouts : google_clouddeploy_target__timeouts option;
}
[@@deriving yojson_of]
(** google_clouddeploy_target *)

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  deploy_parameters : (string * string) list prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  require_approval : bool prop;
  target_id : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let google_clouddeploy_target ?annotations ?deploy_parameters
    ?description ?id ?labels ?project ?require_approval ?timeouts
    ~location ~name ~anthos_cluster ~execution_configs ~gke
    ~multi_target ~run __resource_id =
  let __resource_type = "google_clouddeploy_target" in
  let __resource =
    ({
       annotations;
       deploy_parameters;
       description;
       id;
       labels;
       location;
       name;
       project;
       require_approval;
       anthos_cluster;
       execution_configs;
       gke;
       multi_target;
       run;
       timeouts;
     }
      : google_clouddeploy_target)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddeploy_target __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       deploy_parameters =
         Prop.computed __resource_type __resource_id
           "deploy_parameters";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       require_approval =
         Prop.computed __resource_type __resource_id
           "require_approval";
       target_id =
         Prop.computed __resource_type __resource_id "target_id";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
