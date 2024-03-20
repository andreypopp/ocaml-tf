(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_data_catalog_policy_tag_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  policy_tag : string prop;  (** policy_tag *)
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag_iam_policy *)

let google_data_catalog_policy_tag_iam_policy ?id ~policy_data
    ~policy_tag () : google_data_catalog_policy_tag_iam_policy =
  { id; policy_data; policy_tag }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  policy_tag : string prop;
}

let make ?id ~policy_data ~policy_tag __id =
  let __type = "google_data_catalog_policy_tag_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       policy_tag = Prop.computed __type __id "policy_tag";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_policy_tag_iam_policy
        (google_data_catalog_policy_tag_iam_policy ?id ~policy_data
           ~policy_tag ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_data ~policy_tag __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_data ~policy_tag __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
