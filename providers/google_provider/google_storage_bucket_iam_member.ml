(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_member__condition *)

type google_storage_bucket_iam_member = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : google_storage_bucket_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_member *)

type t = {
  bucket : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let google_storage_bucket_iam_member ?id ~bucket ~member ~role
    ~condition __resource_id =
  let __resource_type = "google_storage_bucket_iam_member" in
  let __resource =
    ({ bucket; id; member; role; condition }
      : google_storage_bucket_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_iam_member __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
