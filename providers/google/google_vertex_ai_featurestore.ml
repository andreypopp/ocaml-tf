(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption_spec = {
  kms_key_name : string prop;
      (** The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the compute resource is created. *)
}
[@@deriving yojson_of]
(** If set, both of the online and offline data storage will be secured by this key. *)

type online_serving_config__scaling = {
  max_node_count : float prop;
      (** The maximum number of nodes to scale up to. Must be greater than minNodeCount, and less than or equal to 10 times of 'minNodeCount'. *)
  min_node_count : float prop;
      (** The minimum number of nodes to scale down to. Must be greater than or equal to 1. *)
}
[@@deriving yojson_of]
(** Online serving scaling configuration. Only one of fixedNodeCount and scaling can be set. Setting one will reset the other. *)

type online_serving_config = {
  fixed_node_count : float prop option; [@option]
      (** The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating. *)
  scaling : online_serving_config__scaling list;
}
[@@deriving yojson_of]
(** Config for online serving resources. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vertex_ai_featurestore = {
  force_destroy : bool prop option; [@option]
      (** If set to true, any EntityTypes and Features for this Featurestore will also be deleted *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to this Featurestore.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop option; [@option]
      (** The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the dataset. eg us-central1 *)
  encryption_spec : encryption_spec list;
  online_serving_config : online_serving_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_featurestore *)

let encryption_spec ~kms_key_name () : encryption_spec =
  { kms_key_name }

let online_serving_config__scaling ~max_node_count ~min_node_count ()
    : online_serving_config__scaling =
  { max_node_count; min_node_count }

let online_serving_config ?fixed_node_count ~scaling () :
    online_serving_config =
  { fixed_node_count; scaling }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_featurestore ?force_destroy ?id ?labels ?name
    ?project ?region ?timeouts ~encryption_spec
    ~online_serving_config () : google_vertex_ai_featurestore =
  {
    force_destroy;
    id;
    labels;
    name;
    project;
    region;
    encryption_spec;
    online_serving_config;
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
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?force_destroy ?id ?labels ?name ?project
    ?region ?timeouts ~encryption_spec ~online_serving_config
    __resource_id =
  let __resource_type = "google_vertex_ai_featurestore" in
  let __resource =
    google_vertex_ai_featurestore ?force_destroy ?id ?labels ?name
      ?project ?region ?timeouts ~encryption_spec
      ~online_serving_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_featurestore __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
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
     }
      : t)
  in
  __resource_attributes
