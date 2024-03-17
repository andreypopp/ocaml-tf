(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_binding__condition *)

type google_storage_bucket_iam_binding = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : google_storage_bucket_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_binding *)

let google_storage_bucket_iam_binding ?id ~bucket ~members ~role
    ~condition __resource_id =
  let __resource_type = "google_storage_bucket_iam_binding" in
  let __resource = { bucket; id; members; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_iam_binding __resource);
  ()
