(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_default_object_acl = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  role_entity : string prop list option; [@option]  (** role_entity *)
}
[@@deriving yojson_of]
(** google_storage_default_object_acl *)

let google_storage_default_object_acl ?id ?role_entity ~bucket () :
    google_storage_default_object_acl =
  { bucket; id; role_entity }

type t = {
  bucket : string prop;
  id : string prop;
  role_entity : string list prop;
}

let make ?id ?role_entity ~bucket __id =
  let __type = "google_storage_default_object_acl" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       role_entity = Prop.computed __type __id "role_entity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_default_object_acl
        (google_storage_default_object_acl ?id ?role_entity ~bucket
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_entity ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_entity ~bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
