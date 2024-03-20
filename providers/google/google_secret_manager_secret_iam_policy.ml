(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_secret_manager_secret_iam_policy = {
  id : string prop option; [@option]
  policy_data : string prop;
  project : string prop option; [@option]
  secret_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secret_manager_secret_iam_policy) -> ()

let yojson_of_google_secret_manager_secret_iam_policy =
  (function
   | {
       id = v_id;
       policy_data = v_policy_data;
       project = v_project;
       secret_id = v_secret_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
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
    : google_secret_manager_secret_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secret_manager_secret_iam_policy

[@@@deriving.end]

let google_secret_manager_secret_iam_policy ?id ?project ~policy_data
    ~secret_id () : google_secret_manager_secret_iam_policy =
  { id; policy_data; project; secret_id }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  secret_id : string prop;
}

let make ?id ?project ~policy_data ~secret_id __id =
  let __type = "google_secret_manager_secret_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       secret_id = Prop.computed __type __id "secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secret_manager_secret_iam_policy
        (google_secret_manager_secret_iam_policy ?id ?project
           ~policy_data ~secret_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~policy_data ~secret_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~policy_data ~secret_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
