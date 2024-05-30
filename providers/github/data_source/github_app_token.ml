(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_app_token = {
  app_id : string prop;
  id : string prop option; [@option]
  installation_id : string prop;
  pem_file : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_app_token) -> ()

let yojson_of_github_app_token =
  (function
   | {
       app_id = v_app_id;
       id = v_id;
       installation_id = v_installation_id;
       pem_file = v_pem_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pem_file in
         ("pem_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_installation_id
         in
         ("installation_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : github_app_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_app_token

[@@@deriving.end]

let github_app_token ?id ~app_id ~installation_id ~pem_file () :
    github_app_token =
  { app_id; id; installation_id; pem_file }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  installation_id : string prop;
  pem_file : string prop;
  token : string prop;
}

let make ?id ~app_id ~installation_id ~pem_file __id =
  let __type = "github_app_token" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       installation_id = Prop.computed __type __id "installation_id";
       pem_file = Prop.computed __type __id "pem_file";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_app_token
        (github_app_token ?id ~app_id ~installation_id ~pem_file ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~app_id ~installation_id ~pem_file __id =
  let (r : _ Tf_core.resource) =
    make ?id ~app_id ~installation_id ~pem_file __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
