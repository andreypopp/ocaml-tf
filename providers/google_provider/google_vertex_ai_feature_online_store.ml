(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_feature_online_store__bigtable__auto_scaling = {
  cpu_utilization_target : float option; [@option]
      (** A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%. *)
  max_node_count : float;
      (** The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of 'minNodeCount'. *)
  min_node_count : float;
      (** The minimum number of nodes to scale down to. Must be greater than or equal to 1. *)
}
[@@deriving yojson_of]
(** Autoscaling config applied to Bigtable Instance. *)

type google_vertex_ai_feature_online_store__bigtable = {
  auto_scaling :
    google_vertex_ai_feature_online_store__bigtable__auto_scaling
    list;
}
[@@deriving yojson_of]
(** Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. *)

type google_vertex_ai_feature_online_store__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_online_store__timeouts *)

type google_vertex_ai_feature_online_store = {
  force_destroy : bool option; [@option]
      (** If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your feature online stores.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. *)
  bigtable : google_vertex_ai_feature_online_store__bigtable list;
  timeouts : google_vertex_ai_feature_online_store__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_online_store *)

let google_vertex_ai_feature_online_store ?force_destroy ?labels
    ?timeouts ~name ~bigtable __resource_id =
  let __resource_type = "google_vertex_ai_feature_online_store" in
  let __resource =
    { force_destroy; labels; name; bigtable; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_online_store __resource);
  ()
