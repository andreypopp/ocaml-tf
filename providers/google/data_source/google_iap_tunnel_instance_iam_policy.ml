(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_iap_tunnel_instance_iam_policy = {
  id : string prop option; [@option]
  instance : string prop;
  project : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iap_tunnel_instance_iam_policy) -> ()

let yojson_of_google_iap_tunnel_instance_iam_policy =
  (function
   | {
       id = v_id;
       instance = v_instance;
       project = v_project;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
    : google_iap_tunnel_instance_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_tunnel_instance_iam_policy

[@@@deriving.end]

let google_iap_tunnel_instance_iam_policy ?id ?project ?zone
    ~instance () : google_iap_tunnel_instance_iam_policy =
  { id; instance; project; zone }

type t = {
  etag : string prop;
  id : string prop;
  instance : string prop;
  policy_data : string prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ~instance __id =
  let __type = "google_iap_tunnel_instance_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
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
      yojson_of_google_iap_tunnel_instance_iam_policy
        (google_iap_tunnel_instance_iam_policy ?id ?project ?zone
           ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ~instance __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ~instance __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
