(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vertex_ai_featurestore_entitytype_feature = {
  description : string prop option; [@option]
      (** Description of the feature. *)
  entitytype : string prop;
      (** The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to the feature.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop option; [@option]
      (** The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type. *)
  value_type : string prop;
      (** Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_featurestore_entitytype_feature *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_featurestore_entitytype_feature ?description ?id
    ?labels ?name ?timeouts ~entitytype ~value_type () :
    google_vertex_ai_featurestore_entitytype_feature =
  { description; entitytype; id; labels; name; value_type; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  entitytype : string prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  value_type : string prop;
}

let register ?tf_module ?description ?id ?labels ?name ?timeouts
    ~entitytype ~value_type __resource_id =
  let __resource_type =
    "google_vertex_ai_featurestore_entitytype_feature"
  in
  let __resource =
    google_vertex_ai_featurestore_entitytype_feature ?description ?id
      ?labels ?name ?timeouts ~entitytype ~value_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_featurestore_entitytype_feature
       __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       entitytype =
         Prop.computed __resource_type __resource_id "entitytype";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       value_type =
         Prop.computed __resource_type __resource_id "value_type";
     }
      : t)
  in
  __resource_attributes
