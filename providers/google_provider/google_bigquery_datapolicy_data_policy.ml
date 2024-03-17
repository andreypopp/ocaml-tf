(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy__data_masking_policy = {
  predefined_expression : string;
      (** The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options. Possible values: [SHA256, ALWAYS_NULL, DEFAULT_MASKING_VALUE, LAST_FOUR_CHARACTERS, FIRST_FOUR_CHARACTERS, EMAIL_MASK, DATE_YEAR_MASK] *)
}
[@@deriving yojson_of]
(** The data masking policy that specifies the data masking rule to use. *)

type google_bigquery_datapolicy_data_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy__timeouts *)

type google_bigquery_datapolicy_data_policy = {
  data_policy_id : string;
      (** User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name. *)
  data_policy_type : string;
      (** The enrollment level of the service. Possible values: [COLUMN_LEVEL_SECURITY_POLICY, DATA_MASKING_POLICY] *)
  id : string option; [@option]  (** id *)
  location : string;
      (** The name of the location of the data policy. *)
  policy_tag : string;
      (** Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}. *)
  project : string option; [@option]  (** project *)
  data_masking_policy :
    google_bigquery_datapolicy_data_policy__data_masking_policy list;
  timeouts : google_bigquery_datapolicy_data_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy *)

let google_bigquery_datapolicy_data_policy ?id ?project ?timeouts
    ~data_policy_id ~data_policy_type ~location ~policy_tag
    ~data_masking_policy __resource_id =
  let __resource_type = "google_bigquery_datapolicy_data_policy" in
  let __resource =
    {
      data_policy_id;
      data_policy_type;
      id;
      location;
      policy_tag;
      project;
      data_masking_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_datapolicy_data_policy __resource);
  ()
