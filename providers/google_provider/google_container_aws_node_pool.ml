(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_aws_node_pool__autoscaling = {
  max_node_count : float prop;
      (** Maximum number of nodes in the NodePool. Must be >= min_node_count. *)
  min_node_count : float prop;
      (** Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count. *)
}
[@@deriving yojson_of]
(** Autoscaler configuration for this node pool. *)

type google_container_aws_node_pool__config__autoscaling_metrics_collection = {
  granularity : string prop;
      (** The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is 1Minute. *)
  metrics : string prop list option; [@option]
      (** The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled. *)
}
[@@deriving yojson_of]
(** Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled. *)

type google_container_aws_node_pool__config__config_encryption = {
  kms_key_arn : string prop;
      (** The ARN of the AWS KMS key used to encrypt node pool configuration. *)
}
[@@deriving yojson_of]
(** The ARN of the AWS KMS key used to encrypt node pool configuration. *)

type google_container_aws_node_pool__config__proxy_config = {
  secret_arn : string prop;
      (** The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration. *)
  secret_version : string prop;
      (** The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration. *)
}
[@@deriving yojson_of]
(** Proxy configuration for outbound HTTP(S) traffic. *)

type google_container_aws_node_pool__config__root_volume = {
  iops : float prop option; [@option]
      (** Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume. *)
  kms_key_arn : string prop option; [@option]
      (** Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used. *)
  size_gib : float prop option; [@option]
      (** Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. *)
  throughput : float prop option; [@option]
      (** Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. If volume type is gp3 and throughput is not specified, the throughput will defaults to 125. *)
  volume_type : string prop option; [@option]
      (** Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3 *)
}
[@@deriving yojson_of]
(** Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type. *)

type google_container_aws_node_pool__config__ssh_config = {
  ec2_key_pair : string prop;
      (** The name of the EC2 key pair used to login into cluster machines. *)
}
[@@deriving yojson_of]
(** Optional. The SSH configuration. *)

type google_container_aws_node_pool__config__taints = {
  effect : string prop;
      (** The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE *)
  key : string prop;  (** Key for the taint. *)
  value : string prop;  (** Value for the taint. *)
}
[@@deriving yojson_of]
(** Optional. The initial taints assigned to nodes of this node pool. *)

type google_container_aws_node_pool__config = {
  iam_instance_profile : string prop;
      (** The name of the AWS IAM role assigned to nodes in the pool. *)
  instance_type : string prop option; [@option]
      (** Optional. The AWS instance type. When unspecified, it defaults to `m5.large`. *)
  labels : (string * string prop) list option; [@option]
      (** Optional. The initial labels assigned to nodes of this node pool. An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  security_group_ids : string prop list option; [@option]
      (** Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster. *)
  tags : (string * string prop) list option; [@option]
      (** Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. *)
  autoscaling_metrics_collection :
    google_container_aws_node_pool__config__autoscaling_metrics_collection
    list;
  config_encryption :
    google_container_aws_node_pool__config__config_encryption list;
  proxy_config :
    google_container_aws_node_pool__config__proxy_config list;
  root_volume :
    google_container_aws_node_pool__config__root_volume list;
  ssh_config :
    google_container_aws_node_pool__config__ssh_config list;
  taints : google_container_aws_node_pool__config__taints list;
}
[@@deriving yojson_of]
(** The configuration of the node pool. *)

type google_container_aws_node_pool__management = {
  auto_repair : bool prop option; [@option]
      (** Optional. Whether or not the nodes will be automatically repaired. *)
}
[@@deriving yojson_of]
(** The Management configuration for this node pool. *)

type google_container_aws_node_pool__max_pods_constraint = {
  max_pods_per_node : float prop;
      (** The maximum number of pods to schedule on a single node. *)
}
[@@deriving yojson_of]
(** The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. *)

type google_container_aws_node_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_aws_node_pool__timeouts *)

type google_container_aws_node_pool__update_settings__surge_settings = {
  max_surge : float prop option; [@option]
      (** Optional. The maximum number of nodes that can be created beyond the current size of the node pool during the update process. *)
  max_unavailable : float prop option; [@option]
      (** Optional. The maximum number of nodes that can be simultaneously unavailable during the update process. A node is considered unavailable if its status is not Ready. *)
}
[@@deriving yojson_of]
(** Optional. Settings for surge update. *)

type google_container_aws_node_pool__update_settings = {
  surge_settings :
    google_container_aws_node_pool__update_settings__surge_settings
    list;
}
[@@deriving yojson_of]
(** Optional. Update settings control the speed and disruption of the node pool update. *)

type google_container_aws_node_pool = {
  annotations : (string * string prop) list option; [@option]
      (** Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  cluster : string prop;  (** The awsCluster for the resource *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  subnet_id : string prop;
      (** The subnet where the node pool node run. *)
  version : string prop;
      (** The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig. *)
  autoscaling : google_container_aws_node_pool__autoscaling list;
  config : google_container_aws_node_pool__config list;
  management : google_container_aws_node_pool__management list;
  max_pods_constraint :
    google_container_aws_node_pool__max_pods_constraint list;
  timeouts : google_container_aws_node_pool__timeouts option;
  update_settings :
    google_container_aws_node_pool__update_settings list;
}
[@@deriving yojson_of]
(** google_container_aws_node_pool *)

let google_container_aws_node_pool ?annotations ?id ?project
    ?timeouts ~cluster ~location ~name ~subnet_id ~version
    ~autoscaling ~config ~management ~max_pods_constraint
    ~update_settings __resource_id =
  let __resource_type = "google_container_aws_node_pool" in
  let __resource =
    {
      annotations;
      cluster;
      id;
      location;
      name;
      project;
      subnet_id;
      version;
      autoscaling;
      config;
      management;
      max_pods_constraint;
      timeouts;
      update_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_aws_node_pool __resource);
  ()
