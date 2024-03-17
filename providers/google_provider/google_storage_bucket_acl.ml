(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_acl = {
  bucket : string;  (** The name of the bucket it applies to. *)
  default_acl : string option; [@option]
      (** Configure this ACL to be the default ACL. *)
  predefined_acl : string option; [@option]
      (** The canned GCS ACL to apply. Must be set if role_entity is not. *)
}
[@@deriving yojson_of]
(** google_storage_bucket_acl *)

let google_storage_bucket_acl ?default_acl ?predefined_acl ~bucket
    __resource_id =
  let __resource_type = "google_storage_bucket_acl" in
  let __resource = { bucket; default_acl; predefined_acl } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_acl __resource);
  ()
