(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_gke_hub_membership_iam_policy = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  membership_id : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_membership_iam_policy) -> ()

let yojson_of_google_gke_hub_membership_iam_policy =
  (function
   | {
       id = v_id;
       location = v_location;
       membership_id = v_membership_id;
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
         let arg = yojson_of_prop yojson_of_string v_membership_id in
         ("membership_id", arg) :: bnds
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
    : google_gke_hub_membership_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_membership_iam_policy

[@@@deriving.end]

let google_gke_hub_membership_iam_policy ?id ?location ?project
    ~membership_id () : google_gke_hub_membership_iam_policy =
  { id; location; membership_id; project }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  location : string prop;
  membership_id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~membership_id __id =
  let __type = "google_gke_hub_membership_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       membership_id = Prop.computed __type __id "membership_id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_membership_iam_policy
        (google_gke_hub_membership_iam_policy ?id ?location ?project
           ~membership_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~membership_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~membership_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
