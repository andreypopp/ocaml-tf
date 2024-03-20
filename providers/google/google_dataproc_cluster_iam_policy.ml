(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_dataproc_cluster_iam_policy = {
  cluster : string prop;
  id : string prop option; [@option]
  policy_data : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_cluster_iam_policy) -> ()

let yojson_of_google_dataproc_cluster_iam_policy =
  (function
   | {
       cluster = v_cluster;
       id = v_id;
       policy_data = v_policy_data;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_data in
         ("policy_data", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : google_dataproc_cluster_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_cluster_iam_policy

[@@@deriving.end]

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
