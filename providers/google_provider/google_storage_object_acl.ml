(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_storage_object_acl = {
  bucket : string;  (** bucket *)
  object_ : string; [@key "object"]  (** object *)
  predefined_acl : string option; [@option]  (** predefined_acl *)
}
[@@deriving yojson_of]
(** google_storage_object_acl *)

let google_storage_object_acl ?predefined_acl ~bucket ~object_
    __resource_id =
  let __resource_type = "google_storage_object_acl" in
  let __resource = { bucket; object_; predefined_acl } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_object_acl __resource);
  ()
