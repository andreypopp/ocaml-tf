(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigtable_instance__cluster__autoscaling_config = {
  cpu_target : float;
      (** The target CPU utilization for autoscaling. Value must be between 10 and 80. *)
  max_nodes : float;
      (** The maximum number of nodes for autoscaling. *)
  min_nodes : float;
      (** The minimum number of nodes for autoscaling. *)
  storage_target : float option; [@option]
      (** The target storage utilization for autoscaling, in GB, for each node in a cluster. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set, whatever is already set for the cluster will not change, or if the cluster is just being created, it will use the default value of 2560 for SSD clusters and 8192 for HDD clusters. *)
}
[@@deriving yojson_of]
(** A list of Autoscaling configurations. Only one element is used and allowed. *)

type google_bigtable_instance__cluster = {
  cluster_id : string;
      (** The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers. *)
  kms_key_name : string option; [@option]
      (** Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the cloudkms.cryptoKeyEncrypterDecrypter role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. 3) All clusters within an instance must use the same CMEK key. Values are of the form projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key} *)
  num_nodes : float option; [@option]
      (** The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization. *)
  state : string;  (** The state of the cluster *)
  storage_type : string option; [@option]
      (** The storage type to use. One of SSD or HDD. Defaults to SSD. *)
  zone : string option; [@option]
      (** The zone to create the Cloud Bigtable cluster in. Each cluster must have a different zone in the same region. Zones that support Bigtable instances are noted on the Cloud Bigtable locations page. *)
  autoscaling_config :
    google_bigtable_instance__cluster__autoscaling_config list;
}
[@@deriving yojson_of]
(** A block of cluster configuration options. This can be specified at least once. *)

type google_bigtable_instance__timeouts = {
  create : string option; [@option]  (** create *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigtable_instance__timeouts *)

type google_bigtable_instance = {
  deletion_protection : bool option; [@option]
      (** Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. *)
  instance_type : string option; [@option]
      (** The instance type to create. One of DEVELOPMENT or PRODUCTION. Defaults to PRODUCTION. *)
  labels : (string * string) list option; [@option]
      (** A mapping of labels to assign to the resource.
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers. *)
  cluster : google_bigtable_instance__cluster list;
  timeouts : google_bigtable_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_instance *)

let google_bigtable_instance ?deletion_protection ?instance_type
    ?labels ?timeouts ~name ~cluster __resource_id =
  let __resource_type = "google_bigtable_instance" in
  let __resource =
    {
      deletion_protection;
      instance_type;
      labels;
      name;
      cluster;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_instance __resource);
  ()
