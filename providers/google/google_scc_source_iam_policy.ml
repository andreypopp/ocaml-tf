(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_scc_source_iam_policy = {
  id : string prop option; [@option]
  organization : string prop;
  policy_data : string prop;
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_scc_source_iam_policy) -> ()

let yojson_of_google_scc_source_iam_policy =
  (function
   | {
       id = v_id;
       organization = v_organization;
       policy_data = v_policy_data;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_data in
         ("policy_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
    : google_scc_source_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_scc_source_iam_policy

[@@@deriving.end]

let google_scc_source_iam_policy ?id ~organization ~policy_data
    ~source () : google_scc_source_iam_policy =
  { id; organization; policy_data; source }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  organization : string prop;
  policy_data : string prop;
  source : string prop;
}

let make ?id ~organization ~policy_data ~source __id =
  let __type = "google_scc_source_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       organization = Prop.computed __type __id "organization";
       policy_data = Prop.computed __type __id "policy_data";
       source = Prop.computed __type __id "source";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_source_iam_policy
        (google_scc_source_iam_policy ?id ~organization ~policy_data
           ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~organization ~policy_data ~source __id =
  let (r : _ Tf_core.resource) =
    make ?id ~organization ~policy_data ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
