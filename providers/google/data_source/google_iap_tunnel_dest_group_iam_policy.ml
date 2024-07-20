(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_iap_tunnel_dest_group_iam_policy = {
  dest_group : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iap_tunnel_dest_group_iam_policy) -> ()

let yojson_of_google_iap_tunnel_dest_group_iam_policy =
  (function
   | {
       dest_group = v_dest_group;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dest_group in
         ("dest_group", arg) :: bnds
       in
       `Assoc bnds
    : google_iap_tunnel_dest_group_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_tunnel_dest_group_iam_policy

[@@@deriving.end]

let google_iap_tunnel_dest_group_iam_policy ?id ?project ?region
    ~dest_group () : google_iap_tunnel_dest_group_iam_policy =
  { dest_group; id; project; region }

type t = {
  tf_name : string;
  dest_group : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ~dest_group __id =
  let __type = "google_iap_tunnel_dest_group_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       dest_group = Prop.computed __type __id "dest_group";
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
      yojson_of_google_iap_tunnel_dest_group_iam_policy
        (google_iap_tunnel_dest_group_iam_policy ?id ?project ?region
           ~dest_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~dest_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~dest_group __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
