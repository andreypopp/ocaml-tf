(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_endpoints_service_consumers_iam_policy = {
  consumer_project : string prop;  (** consumer_project *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_policy *)

let google_endpoints_service_consumers_iam_policy ?id
    ~consumer_project ~policy_data ~service_name () :
    google_endpoints_service_consumers_iam_policy =
  { consumer_project; id; policy_data; service_name }

type t = {
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_name : string prop;
}

let make ?id ~consumer_project ~policy_data ~service_name __id =
  let __type = "google_endpoints_service_consumers_iam_policy" in
  let __attrs =
    ({
       consumer_project =
         Prop.computed __type __id "consumer_project";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       service_name = Prop.computed __type __id "service_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_endpoints_service_consumers_iam_policy
        (google_endpoints_service_consumers_iam_policy ?id
           ~consumer_project ~policy_data ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~consumer_project ~policy_data
    ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~consumer_project ~policy_data ~service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
