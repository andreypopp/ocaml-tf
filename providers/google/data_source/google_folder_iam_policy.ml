(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_folder_iam_policy = {
  folder : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_folder_iam_policy) -> ()

let yojson_of_google_folder_iam_policy =
  (function
   | { folder = v_folder; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_folder in
         ("folder", arg) :: bnds
       in
       `Assoc bnds
    : google_folder_iam_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_folder_iam_policy

[@@@deriving.end]

let google_folder_iam_policy ?id ~folder () :
    google_folder_iam_policy =
  { folder; id }

type t = {
  etag : string prop;
  folder : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~folder __id =
  let __type = "google_folder_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder_iam_policy
        (google_folder_iam_policy ?id ~folder ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~folder __id =
  let (r : _ Tf_core.resource) = make ?id ~folder __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
