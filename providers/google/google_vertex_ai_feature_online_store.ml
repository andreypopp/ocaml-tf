(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigtable__auto_scaling = {
  cpu_utilization_target : float prop option; [@option]
      (** A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%. *)
  max_node_count : float prop;
      (** The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of 'minNodeCount'. *)
  min_node_count : float prop;
      (** The minimum number of nodes to scale down to. Must be greater than or equal to 1. *)
}
[@@deriving yojson_of]
(** Autoscaling config applied to Bigtable Instance. *)

type bigtable = { auto_scaling : bigtable__auto_scaling list }
[@@deriving yojson_of]
(** Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vertex_ai_feature_online_store = {
  force_destroy : bool prop option; [@option]
      (** If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your feature online stores.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of feature online store. eg us-central1 *)
  bigtable : bigtable list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_online_store *)

let bigtable__auto_scaling ?cpu_utilization_target ~max_node_count
    ~min_node_count () : bigtable__auto_scaling =
  { cpu_utilization_target; max_node_count; min_node_count }

let bigtable ~auto_scaling () : bigtable = { auto_scaling }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_feature_online_store ?force_destroy ?id ?labels
    ?project ?region ?timeouts ~name ~bigtable () :
    google_vertex_ai_feature_online_store =
  {
    force_destroy;
    id;
    labels;
    name;
    project;
    region;
    bigtable;
    timeouts;
  }

type t = {
  create_time : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?force_destroy ?id ?labels ?project ?region ?timeouts ~name
    ~bigtable __id =
  let __type = "google_vertex_ai_feature_online_store" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_feature_online_store
        (google_vertex_ai_feature_online_store ?force_destroy ?id
           ?labels ?project ?region ?timeouts ~name ~bigtable ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?labels ?project ?region
    ?timeouts ~name ~bigtable __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?labels ?project ?region ?timeouts ~name
      ~bigtable __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
