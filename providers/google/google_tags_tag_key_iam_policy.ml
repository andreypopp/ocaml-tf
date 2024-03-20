(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_tags_tag_key_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  tag_key : string prop;  (** tag_key *)
}
[@@deriving yojson_of]
(** google_tags_tag_key_iam_policy *)

let google_tags_tag_key_iam_policy ?id ~policy_data ~tag_key () :
    google_tags_tag_key_iam_policy =
  { id; policy_data; tag_key }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  tag_key : string prop;
}

let make ?id ~policy_data ~tag_key __id =
  let __type = "google_tags_tag_key_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       tag_key = Prop.computed __type __id "tag_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_key_iam_policy
        (google_tags_tag_key_iam_policy ?id ~policy_data ~tag_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_data ~tag_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_data ~tag_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
