(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy_iam_member__condition *)

type google_bigquery_datapolicy_data_policy_iam_member = {
  data_policy_id : string prop;  (** data_policy_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition :
    google_bigquery_datapolicy_data_policy_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy_iam_member *)

let google_bigquery_datapolicy_data_policy_iam_member ?id ?location
    ?project ~data_policy_id ~member ~role ~condition __resource_id =
  let __resource_type =
    "google_bigquery_datapolicy_data_policy_iam_member"
  in
  let __resource =
    {
      data_policy_id;
      id;
      location;
      member;
      project;
      role;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_datapolicy_data_policy_iam_member
       __resource);
  ()
