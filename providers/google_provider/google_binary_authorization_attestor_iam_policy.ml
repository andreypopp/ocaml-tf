(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_binary_authorization_attestor_iam_policy = {
  attestor : string prop;  (** attestor *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_binary_authorization_attestor_iam_policy *)

type t = {
  attestor : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let google_binary_authorization_attestor_iam_policy ?id ?project
    ~attestor ~policy_data __resource_id =
  let __resource_type =
    "google_binary_authorization_attestor_iam_policy"
  in
  let __resource =
    ({ attestor; id; policy_data; project }
      : google_binary_authorization_attestor_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_binary_authorization_attestor_iam_policy
       __resource);
  let __resource_attributes =
    ({
       attestor =
         Prop.computed __resource_type __resource_id "attestor";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
