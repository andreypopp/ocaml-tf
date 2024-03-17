(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_feature_group_feature__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group_feature__timeouts *)

type google_vertex_ai_feature_group_feature = {
  description : string prop option; [@option]
      (** The description of the FeatureGroup. *)
  feature_group : string prop;  (** The name of the Feature Group. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your FeatureGroup.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** The resource name of the Feature Group Feature. *)
  project : string prop option; [@option]  (** project *)
  region : string prop;
      (** The region for the resource. It should be the same as the feature group's region. *)
  version_column_name : string prop option; [@option]
      (** The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId. *)
  timeouts : google_vertex_ai_feature_group_feature__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group_feature *)

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  feature_group : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  version_column_name : string prop;
}

let google_vertex_ai_feature_group_feature ?description ?id ?labels
    ?project ?version_column_name ?timeouts ~feature_group ~name
    ~region __resource_id =
  let __resource_type = "google_vertex_ai_feature_group_feature" in
  let __resource =
    ({
       description;
       feature_group;
       id;
       labels;
       name;
       project;
       region;
       version_column_name;
       timeouts;
     }
      : google_vertex_ai_feature_group_feature)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_group_feature __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       feature_group =
         Prop.computed __resource_type __resource_id "feature_group";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       version_column_name =
         Prop.computed __resource_type __resource_id
           "version_column_name";
     }
      : t)
  in
  __resource_attributes
