(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_key_ring_iam_policy = {
  id : string prop option; [@option]  (** id *)
  key_ring_id : string prop;  (** key_ring_id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  policy_data : string prop;
}

let google_kms_key_ring_iam_policy ?id ~key_ring_id ~policy_data
    __resource_id =
  let __resource_type = "google_kms_key_ring_iam_policy" in
  let __resource =
    ({ id; key_ring_id; policy_data }
      : google_kms_key_ring_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       key_ring_id =
         Prop.computed __resource_type __resource_id "key_ring_id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
