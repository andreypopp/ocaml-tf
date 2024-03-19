(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_iam_policy = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_policy *)

let google_storage_bucket_iam_policy ?id ~bucket ~policy_data () :
    google_storage_bucket_iam_policy =
  { bucket; id; policy_data }

type t = {
  bucket : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let register ?tf_module ?id ~bucket ~policy_data __resource_id =
  let __resource_type = "google_storage_bucket_iam_policy" in
  let __resource =
    google_storage_bucket_iam_policy ?id ~bucket ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_iam_policy __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
