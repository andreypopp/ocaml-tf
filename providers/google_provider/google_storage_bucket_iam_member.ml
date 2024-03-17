(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_member__condition *)

type google_storage_bucket_iam_member = {
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  role : string;  (** role *)
  condition : google_storage_bucket_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_member *)

let google_storage_bucket_iam_member ?id ~bucket ~member ~role
    ~condition __resource_id =
  let __resource_type = "google_storage_bucket_iam_member" in
  let __resource = { bucket; id; member; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_iam_member __resource);
  ()
