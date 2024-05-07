(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_cloudfunctions2_function_iam_policy = {
  cloud_function : string prop;
  id : string prop option; [@option]
  location : string prop option; [@option]
  policy_data : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudfunctions2_function_iam_policy) -> ()

let yojson_of_google_cloudfunctions2_function_iam_policy =
  (function
   | {
       cloud_function = v_cloud_function;
       id = v_id;
       location = v_location;
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloud_function
         in
         ("cloud_function", arg) :: bnds
       in
       `Assoc bnds
    : google_cloudfunctions2_function_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudfunctions2_function_iam_policy

[@@@deriving.end]

let google_cloudfunctions2_function_iam_policy ?id ?location ?project
    ~cloud_function ~policy_data () :
    google_cloudfunctions2_function_iam_policy =
  { cloud_function; id; location; policy_data; project }

type t = {
  tf_name : string;
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~cloud_function ~policy_data __id =
  let __type = "google_cloudfunctions2_function_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       cloud_function = Prop.computed __type __id "cloud_function";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudfunctions2_function_iam_policy
        (google_cloudfunctions2_function_iam_policy ?id ?location
           ?project ~cloud_function ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~cloud_function
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~cloud_function ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
