(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_binary_authorization_attestor_iam_policy = {
  attestor : string prop;  (** attestor *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_binary_authorization_attestor_iam_policy *)

let google_binary_authorization_attestor_iam_policy ?id ?project
    ~attestor ~policy_data () :
    google_binary_authorization_attestor_iam_policy =
  { attestor; id; policy_data; project }

type t = {
  attestor : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~attestor ~policy_data __id =
  let __type = "google_binary_authorization_attestor_iam_policy" in
  let __attrs =
    ({
       attestor = Prop.computed __type __id "attestor";
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
      yojson_of_google_binary_authorization_attestor_iam_policy
        (google_binary_authorization_attestor_iam_policy ?id ?project
           ~attestor ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~attestor ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~attestor ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
