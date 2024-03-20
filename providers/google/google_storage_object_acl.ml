(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_object_acl = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  object_ : string prop; [@key "object"]  (** object *)
  predefined_acl : string prop option; [@option]
      (** predefined_acl *)
  role_entity : string prop list option; [@option]  (** role_entity *)
}
[@@deriving yojson_of]
(** google_storage_object_acl *)

let google_storage_object_acl ?id ?predefined_acl ?role_entity
    ~bucket ~object_ () : google_storage_object_acl =
  { bucket; id; object_; predefined_acl; role_entity }

type t = {
  bucket : string prop;
  id : string prop;
  object_ : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

let make ?id ?predefined_acl ?role_entity ~bucket ~object_ __id =
  let __type = "google_storage_object_acl" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       object_ = Prop.computed __type __id "object";
       predefined_acl = Prop.computed __type __id "predefined_acl";
       role_entity = Prop.computed __type __id "role_entity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_object_acl
        (google_storage_object_acl ?id ?predefined_acl ?role_entity
           ~bucket ~object_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?predefined_acl ?role_entity ~bucket
    ~object_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?predefined_acl ?role_entity ~bucket ~object_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
