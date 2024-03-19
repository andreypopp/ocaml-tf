(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_tags_tag_binding = {
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123 *)
  tag_value : string prop;
      (** The TagValue of the TagBinding. Must be of the form tagValues/456. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_tags_tag_binding *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_tags_tag_binding ?id ?timeouts ~parent ~tag_value () :
    google_tags_tag_binding =
  { id; parent; tag_value; timeouts }

type t = {
  id : string prop;
  name : string prop;
  parent : string prop;
  tag_value : string prop;
}

let register ?tf_module ?id ?timeouts ~parent ~tag_value
    __resource_id =
  let __resource_type = "google_tags_tag_binding" in
  let __resource =
    google_tags_tag_binding ?id ?timeouts ~parent ~tag_value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_binding __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       tag_value =
         Prop.computed __resource_type __resource_id "tag_value";
     }
      : t)
  in
  __resource_attributes
