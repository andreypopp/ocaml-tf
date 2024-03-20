(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_cloud_run_v2_service_iam_policy = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  policy_data : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_v2_service_iam_policy) -> ()

let yojson_of_google_cloud_run_v2_service_iam_policy =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       policy_data = v_policy_data;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_run_v2_service_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_v2_service_iam_policy

[@@@deriving.end]

let google_cloud_run_v2_service_iam_policy ?id ?location ?project
    ~name ~policy_data () : google_cloud_run_v2_service_iam_policy =
  { id; location; name; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~name ~policy_data __id =
  let __type = "google_cloud_run_v2_service_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_v2_service_iam_policy
        (google_cloud_run_v2_service_iam_policy ?id ?location
           ?project ~name ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~name ~policy_data
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~name ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
