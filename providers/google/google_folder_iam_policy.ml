(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_folder_iam_policy = {
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_folder_iam_policy *)

let google_folder_iam_policy ?id ~folder ~policy_data () :
    google_folder_iam_policy =
  { folder; id; policy_data }

type t = {
  etag : string prop;
  folder : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~folder ~policy_data __id =
  let __type = "google_folder_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder_iam_policy
        (google_folder_iam_policy ?id ~folder ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~folder ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~folder ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
