(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_tags_tag_key_iam_policy = {
  id : string prop option; [@option]
  policy_data : string prop;
  tag_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tags_tag_key_iam_policy) -> ()

let yojson_of_google_tags_tag_key_iam_policy =
  (function
   | { id = v_id; policy_data = v_policy_data; tag_key = v_tag_key }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_key in
         ("tag_key", arg) :: bnds
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
    : google_tags_tag_key_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tags_tag_key_iam_policy

[@@@deriving.end]

let google_tags_tag_key_iam_policy ?id ~policy_data ~tag_key () :
    google_tags_tag_key_iam_policy =
  { id; policy_data; tag_key }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  tag_key : string prop;
}

let make ?id ~policy_data ~tag_key __id =
  let __type = "google_tags_tag_key_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       tag_key = Prop.computed __type __id "tag_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_key_iam_policy
        (google_tags_tag_key_iam_policy ?id ~policy_data ~tag_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_data ~tag_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_data ~tag_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
