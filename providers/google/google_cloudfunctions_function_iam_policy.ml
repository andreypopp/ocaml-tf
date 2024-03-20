(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_cloudfunctions_function_iam_policy = {
  cloud_function : string prop;  (** cloud_function *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_cloudfunctions_function_iam_policy *)

let google_cloudfunctions_function_iam_policy ?id ?project ?region
    ~cloud_function ~policy_data () :
    google_cloudfunctions_function_iam_policy =
  { cloud_function; id; policy_data; project; region }

type t = {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ~cloud_function ~policy_data __id =
  let __type = "google_cloudfunctions_function_iam_policy" in
  let __attrs =
    ({
       cloud_function = Prop.computed __type __id "cloud_function";
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
      yojson_of_google_cloudfunctions_function_iam_policy
        (google_cloudfunctions_function_iam_policy ?id ?project
           ?region ~cloud_function ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~cloud_function
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~cloud_function ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
