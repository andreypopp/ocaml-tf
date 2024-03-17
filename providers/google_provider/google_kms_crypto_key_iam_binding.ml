(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_crypto_key_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key_iam_binding__condition *)

type google_kms_crypto_key_iam_binding = {
  crypto_key_id : string prop;  (** crypto_key_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : google_kms_crypto_key_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_kms_crypto_key_iam_binding *)

type t = {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

let google_kms_crypto_key_iam_binding ?id ~crypto_key_id ~members
    ~role ~condition __resource_id =
  let __resource_type = "google_kms_crypto_key_iam_binding" in
  let __resource =
    ({ crypto_key_id; id; members; role; condition }
      : google_kms_crypto_key_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_crypto_key_iam_binding __resource);
  let __resource_attributes =
    ({
       crypto_key_id =
         Prop.computed __resource_type __resource_id "crypto_key_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
