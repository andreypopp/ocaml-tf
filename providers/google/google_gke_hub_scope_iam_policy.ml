(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_gke_hub_scope_iam_policy = {
  id : string prop option; [@option]
  policy_data : string prop;
  project : string prop option; [@option]
  scope_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_scope_iam_policy) -> ()

let yojson_of_google_gke_hub_scope_iam_policy =
  (function
   | {
       id = v_id;
       policy_data = v_policy_data;
       project = v_project;
       scope_id = v_scope_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope_id in
         ("scope_id", arg) :: bnds
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
       `Assoc bnds
    : google_gke_hub_scope_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_scope_iam_policy

[@@@deriving.end]

let google_gke_hub_scope_iam_policy ?id ?project ~policy_data
    ~scope_id () : google_gke_hub_scope_iam_policy =
  { id; policy_data; project; scope_id }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  scope_id : string prop;
}

let make ?id ?project ~policy_data ~scope_id __id =
  let __type = "google_gke_hub_scope_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       scope_id = Prop.computed __type __id "scope_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_scope_iam_policy
        (google_gke_hub_scope_iam_policy ?id ?project ~policy_data
           ~scope_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~policy_data ~scope_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~policy_data ~scope_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
