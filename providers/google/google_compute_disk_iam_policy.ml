(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_disk_iam_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]  (** zone *)
}
[@@deriving yojson_of]
(** google_compute_disk_iam_policy *)

let google_compute_disk_iam_policy ?id ?project ?zone ~name
    ~policy_data () : google_compute_disk_iam_policy =
  { id; name; policy_data; project; zone }

type t = {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ~name ~policy_data __id =
  let __type = "google_compute_disk_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_disk_iam_policy
        (google_compute_disk_iam_policy ?id ?project ?zone ~name
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ~name ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ~name ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
