(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_feature_group_feature__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group_feature__timeouts *)

type google_vertex_ai_feature_group_feature = {
  description : string option; [@option]
      (** The description of the FeatureGroup. *)
  feature_group : string;  (** The name of the Feature Group. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your FeatureGroup.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** The resource name of the Feature Group Feature. *)
  region : string;
      (** The region for the resource. It should be the same as the feature group's region. *)
  timeouts : google_vertex_ai_feature_group_feature__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group_feature *)

let google_vertex_ai_feature_group_feature ?description ?labels
    ?timeouts ~feature_group ~name ~region __resource_id =
  let __resource_type = "google_vertex_ai_feature_group_feature" in
  let __resource =
    { description; feature_group; labels; name; region; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_group_feature __resource);
  ()
