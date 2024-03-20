(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_apigee_environment_iam_policy = {
  env_id : string prop;  (** env_id *)
  id : string prop option; [@option]  (** id *)
  org_id : string prop;  (** org_id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_policy *)

let google_apigee_environment_iam_policy ?id ~env_id ~org_id
    ~policy_data () : google_apigee_environment_iam_policy =
  { env_id; id; org_id; policy_data }

type t = {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

let make ?id ~env_id ~org_id ~policy_data __id =
  let __type = "google_apigee_environment_iam_policy" in
  let __attrs =
    ({
       env_id = Prop.computed __type __id "env_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       org_id = Prop.computed __type __id "org_id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_environment_iam_policy
        (google_apigee_environment_iam_policy ?id ~env_id ~org_id
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~env_id ~org_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~env_id ~org_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
