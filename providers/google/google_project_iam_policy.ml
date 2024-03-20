(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_project_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop;  (** project *)
}
[@@deriving yojson_of]
(** google_project_iam_policy *)

let google_project_iam_policy ?id ~policy_data ~project () :
    google_project_iam_policy =
  { id; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ~policy_data ~project __id =
  let __type = "google_project_iam_policy" in
  let __attrs =
    ({
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
      yojson_of_google_project_iam_policy
        (google_project_iam_policy ?id ~policy_data ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_data ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_data ~project __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
