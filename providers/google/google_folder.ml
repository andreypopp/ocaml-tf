(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_folder = {
  display_name : string prop;
      (** The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** The resource name of the parent Folder or Organization. Must be of the form folders/{folder_id} or organizations/{org_id}. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_folder *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_folder ?id ?timeouts ~display_name ~parent () :
    google_folder =
  { display_name; id; parent; timeouts }

type t = {
  create_time : string prop;
  display_name : string prop;
  folder_id : string prop;
  id : string prop;
  lifecycle_state : string prop;
  name : string prop;
  parent : string prop;
}

let make ?id ?timeouts ~display_name ~parent __id =
  let __type = "google_folder" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder
        (google_folder ?id ?timeouts ~display_name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~display_name ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~display_name ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
