(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy__data_masking_policy = {
  predefined_expression : string prop;
      (** The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options. Possible values: [SHA256, ALWAYS_NULL, DEFAULT_MASKING_VALUE, LAST_FOUR_CHARACTERS, FIRST_FOUR_CHARACTERS, EMAIL_MASK, DATE_YEAR_MASK] *)
}
[@@deriving yojson_of]
(** The data masking policy that specifies the data masking rule to use. *)

type google_bigquery_datapolicy_data_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy__timeouts *)

type google_bigquery_datapolicy_data_policy = {
  data_policy_id : string prop;
      (** User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name. *)
  data_policy_type : string prop;
      (** The enrollment level of the service. Possible values: [COLUMN_LEVEL_SECURITY_POLICY, DATA_MASKING_POLICY] *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The name of the location of the data policy. *)
  policy_tag : string prop;
      (** Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}. *)
  project : string prop option; [@option]  (** project *)
  data_masking_policy :
    google_bigquery_datapolicy_data_policy__data_masking_policy list;
  timeouts : google_bigquery_datapolicy_data_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy *)

type t = {
  data_policy_id : string prop;
  data_policy_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_tag : string prop;
  project : string prop;
}

let google_bigquery_datapolicy_data_policy ?id ?project ?timeouts
    ~data_policy_id ~data_policy_type ~location ~policy_tag
    ~data_masking_policy __resource_id =
  let __resource_type = "google_bigquery_datapolicy_data_policy" in
  let __resource =
    ({
       data_policy_id;
       data_policy_type;
       id;
       location;
       policy_tag;
       project;
       data_masking_policy;
       timeouts;
     }
      : google_bigquery_datapolicy_data_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_datapolicy_data_policy __resource);
  let __resource_attributes =
    ({
       data_policy_id =
         Prop.computed __resource_type __resource_id "data_policy_id";
       data_policy_type =
         Prop.computed __resource_type __resource_id
           "data_policy_type";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       policy_tag =
         Prop.computed __resource_type __resource_id "policy_tag";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
