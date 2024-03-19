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

type google_tags_tag_value = {
  description : string prop option; [@option]
      (** User-assigned description of the TagValue. Must not exceed 256 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}. *)
  short_name : string prop;
      (** Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.

The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_tags_tag_value *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_tags_tag_value ?description ?id ?timeouts ~parent
    ~short_name () : google_tags_tag_value =
  { description; id; parent; short_name; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  short_name : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~parent
    ~short_name __resource_id =
  let __resource_type = "google_tags_tag_value" in
  let __resource =
    google_tags_tag_value ?description ?id ?timeouts ~parent
      ~short_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_value __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       namespaced_name =
         Prop.computed __resource_type __resource_id
           "namespaced_name";
       parent = Prop.computed __resource_type __resource_id "parent";
       short_name =
         Prop.computed __resource_type __resource_id "short_name";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
