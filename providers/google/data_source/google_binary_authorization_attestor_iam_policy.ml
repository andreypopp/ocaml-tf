(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_binary_authorization_attestor_iam_policy = {
  attestor : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_binary_authorization_attestor_iam_policy) -> ()

let yojson_of_google_binary_authorization_attestor_iam_policy =
  (function
   | { attestor = v_attestor; id = v_id; project = v_project } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attestor in
         ("attestor", arg) :: bnds
       in
       `Assoc bnds
    : google_binary_authorization_attestor_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_binary_authorization_attestor_iam_policy

[@@@deriving.end]

let google_binary_authorization_attestor_iam_policy ?id ?project
    ~attestor () : google_binary_authorization_attestor_iam_policy =
  { attestor; id; project }

type t = {
  attestor : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~attestor __id =
  let __type = "google_binary_authorization_attestor_iam_policy" in
  let __attrs =
    ({
       attestor = Prop.computed __type __id "attestor";
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
      yojson_of_google_binary_authorization_attestor_iam_policy
        (google_binary_authorization_attestor_iam_policy ?id ?project
           ~attestor ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~attestor __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~attestor __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
