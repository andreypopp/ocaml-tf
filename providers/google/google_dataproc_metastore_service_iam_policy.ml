(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dataproc_metastore_service_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  service_id : string prop;  (** service_id *)
}
[@@deriving yojson_of]
(** google_dataproc_metastore_service_iam_policy *)

let google_dataproc_metastore_service_iam_policy ?id ?location
    ?project ~policy_data ~service_id () :
    google_dataproc_metastore_service_iam_policy =
  { id; location; policy_data; project; service_id }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  service_id : string prop;
}

let make ?id ?location ?project ~policy_data ~service_id __id =
  let __type = "google_dataproc_metastore_service_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_metastore_service_iam_policy
        (google_dataproc_metastore_service_iam_policy ?id ?location
           ?project ~policy_data ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~policy_data
    ~service_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~policy_data ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
