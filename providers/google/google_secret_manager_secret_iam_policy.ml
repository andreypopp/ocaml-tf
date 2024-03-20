(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_secret_manager_secret_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  secret_id : string prop;  (** secret_id *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_policy *)

let google_secret_manager_secret_iam_policy ?id ?project ~policy_data
    ~secret_id () : google_secret_manager_secret_iam_policy =
  { id; policy_data; project; secret_id }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  secret_id : string prop;
}

let make ?id ?project ~policy_data ~secret_id __id =
  let __type = "google_secret_manager_secret_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       secret_id = Prop.computed __type __id "secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secret_manager_secret_iam_policy
        (google_secret_manager_secret_iam_policy ?id ?project
           ~policy_data ~secret_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~policy_data ~secret_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~policy_data ~secret_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
