(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_masking_policy = {
  predefined_expression : string prop;
      (** The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options. Possible values: [SHA256, ALWAYS_NULL, DEFAULT_MASKING_VALUE, LAST_FOUR_CHARACTERS, FIRST_FOUR_CHARACTERS, EMAIL_MASK, DATE_YEAR_MASK] *)
}
[@@deriving yojson_of]
(** The data masking policy that specifies the data masking rule to use. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  data_masking_policy : data_masking_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy *)

let data_masking_policy ~predefined_expression () :
    data_masking_policy =
  { predefined_expression }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_datapolicy_data_policy ?id ?project ?timeouts
    ~data_policy_id ~data_policy_type ~location ~policy_tag
    ~data_masking_policy () : google_bigquery_datapolicy_data_policy
    =
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

type t = {
  data_policy_id : string prop;
  data_policy_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_tag : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~data_policy_id ~data_policy_type
    ~location ~policy_tag ~data_masking_policy __id =
  let __type = "google_bigquery_datapolicy_data_policy" in
  let __attrs =
    ({
       data_policy_id = Prop.computed __type __id "data_policy_id";
       data_policy_type =
         Prop.computed __type __id "data_policy_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       policy_tag = Prop.computed __type __id "policy_tag";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_datapolicy_data_policy
        (google_bigquery_datapolicy_data_policy ?id ?project
           ?timeouts ~data_policy_id ~data_policy_type ~location
           ~policy_tag ~data_masking_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~data_policy_id
    ~data_policy_type ~location ~policy_tag ~data_masking_policy __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~data_policy_id ~data_policy_type
      ~location ~policy_tag ~data_masking_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
