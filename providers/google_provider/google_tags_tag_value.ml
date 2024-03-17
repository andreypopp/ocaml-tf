(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_value__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_tags_tag_value__timeouts *)

type google_tags_tag_value = {
  description : string option; [@option]
      (** User-assigned description of the TagValue. Must not exceed 256 characters. *)
  id : string option; [@option]  (** id *)
  parent : string;
      (** Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}. *)
  short_name : string;
      (** Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.

The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. *)
  timeouts : google_tags_tag_value__timeouts option;
}
[@@deriving yojson_of]
(** google_tags_tag_value *)

let google_tags_tag_value ?description ?id ?timeouts ~parent
    ~short_name __resource_id =
  let __resource_type = "google_tags_tag_value" in
  let __resource =
    { description; id; parent; short_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_value __resource);
  ()
