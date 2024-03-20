(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_data_catalog_tag_template_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  tag_template : string prop;  (** tag_template *)
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template_iam_policy *)

let google_data_catalog_tag_template_iam_policy ?id ?project ?region
    ~policy_data ~tag_template () :
    google_data_catalog_tag_template_iam_policy =
  { id; policy_data; project; region; tag_template }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  tag_template : string prop;
}

let make ?id ?project ?region ~policy_data ~tag_template __id =
  let __type = "google_data_catalog_tag_template_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       tag_template = Prop.computed __type __id "tag_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_tag_template_iam_policy
        (google_data_catalog_tag_template_iam_policy ?id ?project
           ?region ~policy_data ~tag_template ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~policy_data
    ~tag_template __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~policy_data ~tag_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
