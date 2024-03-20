(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_notebooks_runtime_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  runtime_name : string prop;  (** runtime_name *)
}
[@@deriving yojson_of]
(** google_notebooks_runtime_iam_policy *)

let google_notebooks_runtime_iam_policy ?id ?location ?project
    ~policy_data ~runtime_name () :
    google_notebooks_runtime_iam_policy =
  { id; location; policy_data; project; runtime_name }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  runtime_name : string prop;
}

let make ?id ?location ?project ~policy_data ~runtime_name __id =
  let __type = "google_notebooks_runtime_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       runtime_name = Prop.computed __type __id "runtime_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_notebooks_runtime_iam_policy
        (google_notebooks_runtime_iam_policy ?id ?location ?project
           ~policy_data ~runtime_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~policy_data
    ~runtime_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~policy_data ~runtime_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
