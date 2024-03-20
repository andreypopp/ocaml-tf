(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_bigquery_datapolicy_data_policy_iam_binding = {
  data_policy_id : string prop;  (** data_policy_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_bigquery_datapolicy_data_policy_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_bigquery_datapolicy_data_policy_iam_binding ?id ?location
    ?project ~data_policy_id ~members ~role ~condition () :
    google_bigquery_datapolicy_data_policy_iam_binding =
  { data_policy_id; id; location; members; project; role; condition }

type t = {
  data_policy_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let make ?id ?location ?project ~data_policy_id ~members ~role
    ~condition __id =
  let __type =
    "google_bigquery_datapolicy_data_policy_iam_binding"
  in
  let __attrs =
    ({
       data_policy_id = Prop.computed __type __id "data_policy_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_datapolicy_data_policy_iam_binding
        (google_bigquery_datapolicy_data_policy_iam_binding ?id
           ?location ?project ~data_policy_id ~members ~role
           ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~data_policy_id
    ~members ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~data_policy_id ~members ~role
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
