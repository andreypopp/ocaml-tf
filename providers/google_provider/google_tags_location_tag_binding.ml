(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_location_tag_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_tags_location_tag_binding__timeouts *)

type google_tags_location_tag_binding = {
  location : string option; [@option]
      (** The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. *)
  parent : string;
      (** The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123 *)
  tag_value : string;
      (** The TagValue of the TagBinding. Must be of the form tagValues/456. *)
  timeouts : google_tags_location_tag_binding__timeouts option;
}
[@@deriving yojson_of]
(** google_tags_location_tag_binding *)

let google_tags_location_tag_binding ?location ?timeouts ~parent
    ~tag_value __resource_id =
  let __resource_type = "google_tags_location_tag_binding" in
  let __resource = { location; parent; tag_value; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_location_tag_binding __resource);
  ()
