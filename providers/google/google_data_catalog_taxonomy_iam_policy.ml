(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_data_catalog_taxonomy_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  taxonomy : string prop;  (** taxonomy *)
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy_iam_policy *)

let google_data_catalog_taxonomy_iam_policy ?id ?project ?region
    ~policy_data ~taxonomy () :
    google_data_catalog_taxonomy_iam_policy =
  { id; policy_data; project; region; taxonomy }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  taxonomy : string prop;
}

let make ?id ?project ?region ~policy_data ~taxonomy __id =
  let __type = "google_data_catalog_taxonomy_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       taxonomy = Prop.computed __type __id "taxonomy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_taxonomy_iam_policy
        (google_data_catalog_taxonomy_iam_policy ?id ?project ?region
           ~policy_data ~taxonomy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~policy_data ~taxonomy
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~policy_data ~taxonomy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
