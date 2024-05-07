(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_data_catalog_policy_tag_iam_policy = {
  id : string prop option; [@option]
  policy_data : string prop;
  policy_tag : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_catalog_policy_tag_iam_policy) -> ()

let yojson_of_google_data_catalog_policy_tag_iam_policy =
  (function
   | {
       id = v_id;
       policy_data = v_policy_data;
       policy_tag = v_policy_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_tag in
         ("policy_tag", arg) :: bnds
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
    : google_data_catalog_policy_tag_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_catalog_policy_tag_iam_policy

[@@@deriving.end]

let google_data_catalog_policy_tag_iam_policy ?id ~policy_data
    ~policy_tag () : google_data_catalog_policy_tag_iam_policy =
  { id; policy_data; policy_tag }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  policy_tag : string prop;
}

let make ?id ~policy_data ~policy_tag __id =
  let __type = "google_data_catalog_policy_tag_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       policy_tag = Prop.computed __type __id "policy_tag";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_policy_tag_iam_policy
        (google_data_catalog_policy_tag_iam_policy ?id ~policy_data
           ~policy_tag ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_data ~policy_tag __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_data ~policy_tag __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
