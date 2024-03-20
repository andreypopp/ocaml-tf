(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dataproc_cluster_iam_policy = {
  cluster : string prop;  (** cluster *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_policy *)

let google_dataproc_cluster_iam_policy ?id ?project ?region ~cluster
    ~policy_data () : google_dataproc_cluster_iam_policy =
  { cluster; id; policy_data; project; region }

type t = {
  cluster : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ~cluster ~policy_data __id =
  let __type = "google_dataproc_cluster_iam_policy" in
  let __attrs =
    ({
       cluster = Prop.computed __type __id "cluster";
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
      yojson_of_google_dataproc_cluster_iam_policy
        (google_dataproc_cluster_iam_policy ?id ?project ?region
           ~cluster ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~cluster ~policy_data
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~cluster ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
