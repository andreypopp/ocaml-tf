(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_ca_pool_iam_policy = {
  ca_pool : string prop;  (** ca_pool *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_privateca_ca_pool_iam_policy *)

type t = {
  ca_pool : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let google_privateca_ca_pool_iam_policy ?id ?location ?project
    ~ca_pool ~policy_data __resource_id =
  let __resource_type = "google_privateca_ca_pool_iam_policy" in
  let __resource =
    ({ ca_pool; id; location; policy_data; project }
      : google_privateca_ca_pool_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_ca_pool_iam_policy __resource);
  let __resource_attributes =
    ({
       ca_pool =
         Prop.computed __resource_type __resource_id "ca_pool";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
