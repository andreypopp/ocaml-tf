(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_data_catalog_entry_group_iam_policy = {
  entry_group : string prop;  (** entry_group *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group_iam_policy *)

let google_data_catalog_entry_group_iam_policy ?id ?project ?region
    ~entry_group ~policy_data () :
    google_data_catalog_entry_group_iam_policy =
  { entry_group; id; policy_data; project; region }

type t = {
  entry_group : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ~entry_group ~policy_data __id =
  let __type = "google_data_catalog_entry_group_iam_policy" in
  let __attrs =
    ({
       entry_group = Prop.computed __type __id "entry_group";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_entry_group_iam_policy
        (google_data_catalog_entry_group_iam_policy ?id ?project
           ?region ~entry_group ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~entry_group
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~entry_group ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
