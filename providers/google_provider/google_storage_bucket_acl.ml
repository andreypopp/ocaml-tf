(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_acl = {
  bucket : string;  (** The name of the bucket it applies to. *)
  default_acl : string option; [@option]
      (** Configure this ACL to be the default ACL. *)
  id : string option; [@option]  (** id *)
  predefined_acl : string option; [@option]
      (** The canned GCS ACL to apply. Must be set if role_entity is not. *)
  role_entity : string list option; [@option]
      (** List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not. *)
}
[@@deriving yojson_of]
(** google_storage_bucket_acl *)

let google_storage_bucket_acl ?default_acl ?id ?predefined_acl
    ?role_entity ~bucket __resource_id =
  let __resource_type = "google_storage_bucket_acl" in
  let __resource =
    { bucket; default_acl; id; predefined_acl; role_entity }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_acl __resource);
  ()
