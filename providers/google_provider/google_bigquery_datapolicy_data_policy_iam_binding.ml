(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy_iam_binding__condition *)

type google_bigquery_datapolicy_data_policy_iam_binding = {
  data_policy_id : string;  (** data_policy_id *)
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition :
    google_bigquery_datapolicy_data_policy_iam_binding__condition
    list;
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy_iam_binding *)

let google_bigquery_datapolicy_data_policy_iam_binding ?id ?location
    ?project ~data_policy_id ~members ~role ~condition __resource_id
    =
  let __resource_type =
    "google_bigquery_datapolicy_data_policy_iam_binding"
  in
  let __resource =
    {
      data_policy_id;
      id;
      location;
      members;
      project;
      role;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_datapolicy_data_policy_iam_binding
       __resource);
  ()
