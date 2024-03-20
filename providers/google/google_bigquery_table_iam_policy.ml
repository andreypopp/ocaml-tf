(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_bigquery_table_iam_policy = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  table_id : string prop;  (** table_id *)
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_policy *)

let google_bigquery_table_iam_policy ?id ?project ~dataset_id
    ~policy_data ~table_id () : google_bigquery_table_iam_policy =
  { dataset_id; id; policy_data; project; table_id }

type t = {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  table_id : string prop;
}

let make ?id ?project ~dataset_id ~policy_data ~table_id __id =
  let __type = "google_bigquery_table_iam_policy" in
  let __attrs =
    ({
       dataset_id = Prop.computed __type __id "dataset_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       table_id = Prop.computed __type __id "table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_table_iam_policy
        (google_bigquery_table_iam_policy ?id ?project ~dataset_id
           ~policy_data ~table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~dataset_id ~policy_data
    ~table_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~dataset_id ~policy_data ~table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
