(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~parent ~tag_value __id =
  let __type = "google_tags_tag_binding" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       tag_value = Prop.computed __type __id "tag_value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_binding
        (google_tags_tag_binding ?id ?timeouts ~parent ~tag_value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~parent ~tag_value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~parent ~tag_value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
