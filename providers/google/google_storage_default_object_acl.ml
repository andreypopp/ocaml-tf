(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?role_entity ~bucket __resource_id =
  let __resource_type = "google_storage_default_object_acl" in
  let __resource =
    google_storage_default_object_acl ?id ?role_entity ~bucket ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_default_object_acl __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       role_entity =
         Prop.computed __resource_type __resource_id "role_entity";
     }
      : t)
  in
  __resource_attributes
