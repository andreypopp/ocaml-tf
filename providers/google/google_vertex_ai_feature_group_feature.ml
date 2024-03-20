(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group_feature *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_feature_group_feature ?description ?id ?labels
    ?project ?version_column_name ?timeouts ~feature_group ~name
    ~region () : google_vertex_ai_feature_group_feature =
  {
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

let make ?description ?id ?labels ?project ?version_column_name
    ?timeouts ~feature_group ~name ~region __id =
  let __type = "google_vertex_ai_feature_group_feature" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       feature_group = Prop.computed __type __id "feature_group";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       version_column_name =
         Prop.computed __type __id "version_column_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_feature_group_feature
        (google_vertex_ai_feature_group_feature ?description ?id
           ?labels ?project ?version_column_name ?timeouts
           ~feature_group ~name ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?version_column_name ?timeouts ~feature_group ~name ~region __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?version_column_name
      ?timeouts ~feature_group ~name ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
