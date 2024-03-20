(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_artifact_registry_repository_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  repository : string prop;  (** repository *)
}
[@@deriving yojson_of]
(** google_artifact_registry_repository_iam_policy *)

let google_artifact_registry_repository_iam_policy ?id ?location
    ?project ~policy_data ~repository () :
    google_artifact_registry_repository_iam_policy =
  { id; location; policy_data; project; repository }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  repository : string prop;
}

let make ?id ?location ?project ~policy_data ~repository __id =
  let __type = "google_artifact_registry_repository_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_artifact_registry_repository_iam_policy
        (google_artifact_registry_repository_iam_policy ?id ?location
           ?project ~policy_data ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~policy_data
    ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~policy_data ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
