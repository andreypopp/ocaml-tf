(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_project_iam_policy = {
  id : string prop option; [@option]
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_iam_policy) -> ()

let yojson_of_google_project_iam_policy =
  (function
   | { id = v_id; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
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
    : google_project_iam_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_iam_policy

[@@@deriving.end]

let google_project_iam_policy ?id ~project () :
    google_project_iam_policy =
  { id; project }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ~project __id =
  let __type = "google_project_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_iam_policy
        (google_project_iam_policy ?id ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~project __id =
  let (r : _ Tf_core.resource) = make ?id ~project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
