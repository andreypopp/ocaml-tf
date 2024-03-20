(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_clouddeploy_target_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_clouddeploy_target_iam_policy *)

let google_clouddeploy_target_iam_policy ?id ?location ?project ~name
    ~policy_data () : google_clouddeploy_target_iam_policy =
  { id; location; name; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~name ~policy_data __id =
  let __type = "google_clouddeploy_target_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddeploy_target_iam_policy
        (google_clouddeploy_target_iam_policy ?id ?location ?project
           ~name ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~name ~policy_data
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~name ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
