(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_bucket_acl = {
  bucket : string prop;  (** The name of the bucket it applies to. *)
  default_acl : string prop option; [@option]
      (** Configure this ACL to be the default ACL. *)
  id : string prop option; [@option]  (** id *)
  predefined_acl : string prop option; [@option]
      (** The canned GCS ACL to apply. Must be set if role_entity is not. *)
  role_entity : string prop list option; [@option]
      (** List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not. *)
}
[@@deriving yojson_of]
(** google_storage_bucket_acl *)

let google_storage_bucket_acl ?default_acl ?id ?predefined_acl
    ?role_entity ~bucket () : google_storage_bucket_acl =
  { bucket; default_acl; id; predefined_acl; role_entity }

type t = {
  bucket : string prop;
  default_acl : string prop;
  id : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

let make ?default_acl ?id ?predefined_acl ?role_entity ~bucket __id =
  let __type = "google_storage_bucket_acl" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       default_acl = Prop.computed __type __id "default_acl";
       id = Prop.computed __type __id "id";
       predefined_acl = Prop.computed __type __id "predefined_acl";
       role_entity = Prop.computed __type __id "role_entity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_bucket_acl
        (google_storage_bucket_acl ?default_acl ?id ?predefined_acl
           ?role_entity ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?default_acl ?id ?predefined_acl ?role_entity
    ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?default_acl ?id ?predefined_acl ?role_entity ~bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
