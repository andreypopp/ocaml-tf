(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?location ?project ~data_policy_id ~policy_data __id =
  let __type = "google_bigquery_datapolicy_data_policy_iam_policy" in
  let __attrs =
    ({
       data_policy_id = Prop.computed __type __id "data_policy_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_datapolicy_data_policy_iam_policy
        (google_bigquery_datapolicy_data_policy_iam_policy ?id
           ?location ?project ~data_policy_id ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~data_policy_id
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~data_policy_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
