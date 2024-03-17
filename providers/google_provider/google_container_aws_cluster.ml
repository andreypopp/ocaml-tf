(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_aws_cluster__authorization__admin_groups = {
  group : string prop;
      (** The name of the group, e.g. `my-group@domain.com`. *)
}
[@@deriving yojson_of]
(** Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)

type google_container_aws_cluster__authorization__admin_users = {
  username : string prop;
      (** The name of the user, e.g. `my-gcp-id@gmail.com`. *)
}
[@@deriving yojson_of]
(** Users to perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)

type google_container_aws_cluster__authorization = {
  admin_groups :
    google_container_aws_cluster__authorization__admin_groups list;
  admin_users :
    google_container_aws_cluster__authorization__admin_users list;
}
[@@deriving yojson_of]
(** Configuration related to the cluster RBAC settings. *)

type google_container_aws_cluster__binary_authorization = {
  evaluation_mode : string prop option; [@option]
      (** Mode of operation for Binary Authorization policy evaluation. Possible values: DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE *)
}
[@@deriving yojson_of]
(** Configuration options for the Binary Authorization feature. *)

type google_container_aws_cluster__control_plane__aws_services_authentication = {
  role_arn : string prop;
      (** The Amazon Resource Name (ARN) of the role that the Anthos Multi-Cloud API will assume when managing AWS resources on your account. *)
  role_session_name : string prop option; [@option]
      (** Optional. An identifier for the assumed role session. When unspecified, it defaults to `multicloud-service-agent`. *)
}
[@@deriving yojson_of]
(** Authentication configuration for management of AWS resources. *)

type google_container_aws_cluster__control_plane__config_encryption = {
  kms_key_arn : string prop;
      (** The ARN of the AWS KMS key used to encrypt cluster configuration. *)
}
[@@deriving yojson_of]
(** The ARN of the AWS KMS key used to encrypt cluster configuration. *)

type google_container_aws_cluster__control_plane__database_encryption = {
  kms_key_arn : string prop;
      (** The ARN of the AWS KMS key used to encrypt cluster secrets. *)
}
[@@deriving yojson_of]
(** The ARN of the AWS KMS key used to encrypt cluster secrets. *)

type google_container_aws_cluster__control_plane__main_volume = {
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
(** Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 8 GiB with the GP2 volume type. *)

type google_container_aws_cluster__control_plane__proxy_config = {
  secret_arn : string prop;
      (** The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration. *)
  secret_version : string prop;
      (** The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration. *)
}
[@@deriving yojson_of]
(** Proxy configuration for outbound HTTP(S) traffic. *)

type google_container_aws_cluster__control_plane__root_volume = {
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
(** Optional. Configuration related to the root volume provisioned for each control plane replica. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type. *)

type google_container_aws_cluster__control_plane__ssh_config = {
  ec2_key_pair : string prop;
      (** The name of the EC2 key pair used to login into cluster machines. *)
}
[@@deriving yojson_of]
(** Optional. SSH configuration for how to access the underlying control plane machines. *)

type google_container_aws_cluster__control_plane = {
  iam_instance_profile : string prop;
      (** The name of the AWS IAM instance pofile to assign to each control plane replica. *)
  instance_type : string prop option; [@option]
      (** Optional. The AWS instance type. When unspecified, it defaults to `m5.large`. *)
  security_group_ids : string prop list option; [@option]
      (** Optional. The IDs of additional security groups to add to control plane replicas. The Anthos Multi-Cloud API will automatically create and manage security groups with the minimum rules needed for a functioning cluster. *)
  subnet_ids : string prop list;
      (** The list of subnets where control plane replicas will run. A replica will be provisioned on each subnet and up to three values can be provided. Each subnet must be in a different AWS Availability Zone (AZ). *)
  tags : (string * string prop) list option; [@option]
      (** Optional. A set of AWS resource tags to propagate to all underlying managed AWS resources. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. *)
  version : string prop;
      (** The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling . *)
  aws_services_authentication :
    google_container_aws_cluster__control_plane__aws_services_authentication
    list;
  config_encryption :
    google_container_aws_cluster__control_plane__config_encryption
    list;
  database_encryption :
    google_container_aws_cluster__control_plane__database_encryption
    list;
  main_volume :
    google_container_aws_cluster__control_plane__main_volume list;
  proxy_config :
    google_container_aws_cluster__control_plane__proxy_config list;
  root_volume :
    google_container_aws_cluster__control_plane__root_volume list;
  ssh_config :
    google_container_aws_cluster__control_plane__ssh_config list;
}
[@@deriving yojson_of]
(** Configuration related to the cluster control plane. *)

type google_container_aws_cluster__fleet = {
  membership : string prop;
      (** The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>. *)
  project : string prop option; [@option]
      (** The number of the Fleet host project where this cluster will be registered. *)
}
[@@deriving yojson_of]
(** Fleet configuration. *)

type google_container_aws_cluster__networking = {
  per_node_pool_sg_rules_disabled : bool prop option; [@option]
      (** Disable the per node pool subnet security group rules on the control plane security group. When set to true, you must also provide one or more security groups that ensure node pools are able to send requests to the control plane on TCP/443 and TCP/8132. Failure to do so may result in unavailable node pools. *)
  pod_address_cidr_blocks : string prop list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation. *)
  service_address_cidr_blocks : string prop list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation. *)
  vpc_id : string prop;
      (** The VPC associated with the cluster. All component clusters (i.e. control plane and node pools) run on a single VPC. This field cannot be changed after creation. *)
}
[@@deriving yojson_of]
(** Cluster-wide networking configuration. *)

type google_container_aws_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_aws_cluster__timeouts *)

type google_container_aws_cluster__workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_aws_cluster = {
  annotations : (string * string prop) list option; [@option]
      (** Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  aws_region : string prop;
      (** The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region. *)
  description : string prop option; [@option]
      (** Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  authorization : google_container_aws_cluster__authorization list;
  binary_authorization :
    google_container_aws_cluster__binary_authorization list;
  control_plane : google_container_aws_cluster__control_plane list;
  fleet : google_container_aws_cluster__fleet list;
  networking : google_container_aws_cluster__networking list;
  timeouts : google_container_aws_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_container_aws_cluster *)

type t = {
  annotations : (string * string) list prop;
  aws_region : string prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config :
    google_container_aws_cluster__workload_identity_config list prop;
}

let google_container_aws_cluster ?annotations ?description ?id
    ?project ?timeouts ~aws_region ~location ~name ~authorization
    ~binary_authorization ~control_plane ~fleet ~networking
    __resource_id =
  let __resource_type = "google_container_aws_cluster" in
  let __resource =
    ({
       annotations;
       aws_region;
       description;
       id;
       location;
       name;
       project;
       authorization;
       binary_authorization;
       control_plane;
       fleet;
       networking;
       timeouts;
     }
      : google_container_aws_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_aws_cluster __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       aws_region =
         Prop.computed __resource_type __resource_id "aws_region";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       state = Prop.computed __resource_type __resource_id "state";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       workload_identity_config =
         Prop.computed __resource_type __resource_id
           "workload_identity_config";
     }
      : t)
  in
  __resource_attributes
