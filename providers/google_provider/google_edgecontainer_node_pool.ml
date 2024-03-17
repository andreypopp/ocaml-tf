(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_edgecontainer_node_pool__local_disk_encryption = {
  kms_key : string prop option; [@option]
      (** The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
If not specified, a Google-managed key will be used instead. *)
  kms_key_active_version : string prop;
      (** The Cloud KMS CryptoKeyVersion currently in use for protecting node local disks. Only applicable if kmsKey is set. *)
  kms_key_state : string prop;
      (** Availability of the Cloud KMS CryptoKey. If not KEY_AVAILABLE, then nodes may go offline as they cannot access their local data.
This can be caused by a lack of permissions to use the key, or if the key is disabled or deleted. *)
}
[@@deriving yojson_of]
(** Local disk encryption options. This field is only used when enabling CMEK support. *)

type google_edgecontainer_node_pool__node_config = {
  labels : (string * string prop) list option; [@option]
      (** The Kubernetes node labels *)
}
[@@deriving yojson_of]
(** Configuration for each node in the NodePool *)

type google_edgecontainer_node_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_edgecontainer_node_pool__timeouts *)

type google_edgecontainer_node_pool = {
  cluster : string prop;
      (** The name of the target Distributed Cloud Edge Cluster. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location of the resource. *)
  machine_filter : string prop option; [@option]
      (** Only machines matching this filter will be allowed to join the node pool.
The filtering language accepts strings like name=<name>, and is
documented in more detail in [AIP-160](https://google.aip.dev/160). *)
  name : string prop;  (** The resource name of the node pool. *)
  node_count : float prop;  (** The number of nodes in the pool. *)
  node_location : string prop;
      (** Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: 'us-central1-edge-customer-a'. *)
  project : string prop option; [@option]  (** project *)
  local_disk_encryption :
    google_edgecontainer_node_pool__local_disk_encryption list;
  node_config : google_edgecontainer_node_pool__node_config list;
  timeouts : google_edgecontainer_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_edgecontainer_node_pool *)

type t = {
  cluster : string prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  machine_filter : string prop;
  name : string prop;
  node_count : float prop;
  node_location : string prop;
  node_version : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let google_edgecontainer_node_pool ?id ?labels ?machine_filter
    ?project ?timeouts ~cluster ~location ~name ~node_count
    ~node_location ~local_disk_encryption ~node_config __resource_id
    =
  let __resource_type = "google_edgecontainer_node_pool" in
  let __resource =
    ({
       cluster;
       id;
       labels;
       location;
       machine_filter;
       name;
       node_count;
       node_location;
       project;
       local_disk_encryption;
       node_config;
       timeouts;
     }
      : google_edgecontainer_node_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgecontainer_node_pool __resource);
  let __resource_attributes =
    ({
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       machine_filter =
         Prop.computed __resource_type __resource_id "machine_filter";
       name = Prop.computed __resource_type __resource_id "name";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       node_location =
         Prop.computed __resource_type __resource_id "node_location";
       node_version =
         Prop.computed __resource_type __resource_id "node_version";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
