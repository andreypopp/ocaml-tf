(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_iap_web_type_app_engine_iam_policy = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_iap_web_type_app_engine_iam_policy *)

let google_iap_web_type_app_engine_iam_policy ?id ?project ~app_id
    ~policy_data () : google_iap_web_type_app_engine_iam_policy =
  { app_id; id; policy_data; project }

type t = {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~app_id ~policy_data __id =
  let __type = "google_iap_web_type_app_engine_iam_policy" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_web_type_app_engine_iam_policy
        (google_iap_web_type_app_engine_iam_policy ?id ?project
           ~app_id ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~app_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~app_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
