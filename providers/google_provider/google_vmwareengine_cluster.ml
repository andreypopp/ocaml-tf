(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vmwareengine_cluster__node_type_configs = {
  custom_core_count : float option; [@option]
      (** Customized number of cores available to each node of the type.
This number must always be one of 'nodeType.availableCustomCoreCounts'.
If zero is provided max value from 'nodeType.availableCustomCoreCounts' will be used.
Once the customer is created then corecount cannot be changed. *)
  node_count : float;
      (** The number of nodes of this type in the cluster. *)
  node_type_id : string;  (** node_type_id *)
}
[@@deriving yojson_of]
(** The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). *)

type google_vmwareengine_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_cluster__timeouts *)

type google_vmwareengine_cluster = {
  name : string;  (** The ID of the Cluster. *)
  parent : string;
      (** The resource name of the private cloud to create a new cluster in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  node_type_configs :
    google_vmwareengine_cluster__node_type_configs list;
  timeouts : google_vmwareengine_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_cluster *)

let google_vmwareengine_cluster ?timeouts ~name ~parent
    ~node_type_configs __resource_id =
  let __resource_type = "google_vmwareengine_cluster" in
  let __resource = { name; parent; node_type_configs; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_cluster __resource);
  ()
