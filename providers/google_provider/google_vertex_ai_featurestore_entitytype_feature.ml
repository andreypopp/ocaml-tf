(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_featurestore_entitytype_feature__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_featurestore_entitytype_feature__timeouts *)

type google_vertex_ai_featurestore_entitytype_feature = {
  description : string option; [@option]
      (** Description of the feature. *)
  entitytype : string;
      (** The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to the feature.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string option; [@option]
      (** The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type. *)
  value_type : string;
      (** Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType *)
  timeouts :
    google_vertex_ai_featurestore_entitytype_feature__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_featurestore_entitytype_feature *)

let google_vertex_ai_featurestore_entitytype_feature ?description
    ?labels ?name ?timeouts ~entitytype ~value_type __resource_id =
  let __resource_type =
    "google_vertex_ai_featurestore_entitytype_feature"
  in
  let __resource =
    { description; entitytype; labels; name; value_type; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_featurestore_entitytype_feature
       __resource);
  ()
