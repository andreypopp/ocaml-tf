(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?default_acl ?id ?predefined_acl ?role_entity
    ~bucket __resource_id =
  let __resource_type = "google_storage_bucket_acl" in
  let __resource =
    google_storage_bucket_acl ?default_acl ?id ?predefined_acl
      ?role_entity ~bucket ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_acl __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       default_acl =
         Prop.computed __resource_type __resource_id "default_acl";
       id = Prop.computed __resource_type __resource_id "id";
       predefined_acl =
         Prop.computed __resource_type __resource_id "predefined_acl";
       role_entity =
         Prop.computed __resource_type __resource_id "role_entity";
     }
      : t)
  in
  __resource_attributes
