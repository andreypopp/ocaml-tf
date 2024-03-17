(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_subnetwork_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  subnetwork : string prop;  (** subnetwork *)
}
[@@deriving yojson_of]
(** google_compute_subnetwork_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  subnetwork : string prop;
}

let google_compute_subnetwork_iam_policy ?id ?project ?region
    ~policy_data ~subnetwork __resource_id =
  let __resource_type = "google_compute_subnetwork_iam_policy" in
  let __resource =
    ({ id; policy_data; project; region; subnetwork }
      : google_compute_subnetwork_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_subnetwork_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
     }
      : t)
  in
  __resource_attributes
