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

let google_storage_default_object_acl ?id ?role_entity ~bucket
    __resource_id =
  let __resource_type = "google_storage_default_object_acl" in
  let __resource = { bucket; id; role_entity } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_default_object_acl __resource);
  ()
