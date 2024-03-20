(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_subnetwork_iam_policy = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  subnetwork : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_subnetwork_iam_policy) -> ()

let yojson_of_google_compute_subnetwork_iam_policy =
  (function
   | {
       id = v_id;
       project = v_project;
       region = v_region;
       subnetwork = v_subnetwork;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_subnetwork_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_subnetwork_iam_policy

[@@@deriving.end]

let google_compute_subnetwork_iam_policy ?id ?project ?region
    ~subnetwork () : google_compute_subnetwork_iam_policy =
  { id; project; region; subnetwork }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  subnetwork : string prop;
}

let make ?id ?project ?region ~subnetwork __id =
  let __type = "google_compute_subnetwork_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       subnetwork = Prop.computed __type __id "subnetwork";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_subnetwork_iam_policy
        (google_compute_subnetwork_iam_policy ?id ?project ?region
           ~subnetwork ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~subnetwork __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~subnetwork __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
