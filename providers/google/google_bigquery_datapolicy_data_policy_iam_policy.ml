(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy_iam_policy = {
  data_policy_id : string prop;  (** data_policy_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy_iam_policy *)

let google_bigquery_datapolicy_data_policy_iam_policy ?id ?location
    ?project ~data_policy_id ~policy_data () :
    google_bigquery_datapolicy_data_policy_iam_policy =
  { data_policy_id; id; location; policy_data; project }

type t = {
  data_policy_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let register ?tf_module ?id ?location ?project ~data_policy_id
    ~policy_data __resource_id =
  let __resource_type =
    "google_bigquery_datapolicy_data_policy_iam_policy"
  in
  let __resource =
    google_bigquery_datapolicy_data_policy_iam_policy ?id ?location
      ?project ~data_policy_id ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_datapolicy_data_policy_iam_policy
       __resource);
  let __resource_attributes =
    ({
       data_policy_id =
         Prop.computed __resource_type __resource_id "data_policy_id";
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
