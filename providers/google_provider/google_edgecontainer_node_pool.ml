(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_edgecontainer_node_pool__local_disk_encryption = {
  kms_key : string option; [@option]
      (** The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
If not specified, a Google-managed key will be used instead. *)
  kms_key_active_version : string;
      (** The Cloud KMS CryptoKeyVersion currently in use for protecting node local disks. Only applicable if kmsKey is set. *)
  kms_key_state : string;
      (** Availability of the Cloud KMS CryptoKey. If not KEY_AVAILABLE, then nodes may go offline as they cannot access their local data.
This can be caused by a lack of permissions to use the key, or if the key is disabled or deleted. *)
}
[@@deriving yojson_of]
(** Local disk encryption options. This field is only used when enabling CMEK support. *)

type google_edgecontainer_node_pool__node_config = {
  labels : (string * string) list option; [@option]
      (** The Kubernetes node labels *)
}
[@@deriving yojson_of]
(** Configuration for each node in the NodePool *)

type google_edgecontainer_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_edgecontainer_node_pool__timeouts *)

type google_edgecontainer_node_pool = {
  cluster : string;
      (** The name of the target Distributed Cloud Edge Cluster. *)
  labels : (string * string) list option; [@option]
      (** Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location of the resource. *)
  name : string;  (** The resource name of the node pool. *)
  node_count : float;  (** The number of nodes in the pool. *)
  node_location : string;
      (** Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: 'us-central1-edge-customer-a'. *)
  local_disk_encryption :
    google_edgecontainer_node_pool__local_disk_encryption list;
  node_config : google_edgecontainer_node_pool__node_config list;
  timeouts : google_edgecontainer_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_edgecontainer_node_pool *)

let google_edgecontainer_node_pool ?labels ?timeouts ~cluster
    ~location ~name ~node_count ~node_location ~local_disk_encryption
    ~node_config __resource_id =
  let __resource_type = "google_edgecontainer_node_pool" in
  let __resource =
    {
      cluster;
      labels;
      location;
      name;
      node_count;
      node_location;
      local_disk_encryption;
      node_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgecontainer_node_pool __resource);
  ()