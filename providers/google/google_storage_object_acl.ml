(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type t = {
  bucket : string prop;
  id : string prop;
  object_ : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

let google_storage_object_acl ?id ?predefined_acl ?role_entity
    ~bucket ~object_ __resource_id =
  let __resource_type = "google_storage_object_acl" in
  let __resource =
    ({ bucket; id; object_; predefined_acl; role_entity }
      : google_storage_object_acl)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_object_acl __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       object_ = Prop.computed __resource_type __resource_id "object";
       predefined_acl =
         Prop.computed __resource_type __resource_id "predefined_acl";
       role_entity =
         Prop.computed __resource_type __resource_id "role_entity";
     }
      : t)
  in
  __resource_attributes
