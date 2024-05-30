(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scopes = {
  consent : string prop;
  default : bool prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  metadata_publish : string prop;
  name : string prop;
  optional : bool prop;
  system : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scopes) -> ()

let yojson_of_scopes =
  (function
   | {
       consent = v_consent;
       default = v_default;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       metadata_publish = v_metadata_publish;
       name = v_name;
       optional = v_optional;
       system = v_system;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_system in
         ("system", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metadata_publish
         in
         ("metadata_publish", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_default in
         ("default", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_consent in
         ("consent", arg) :: bnds
       in
       `Assoc bnds
    : scopes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scopes

[@@@deriving.end]

type okta_auth_server_scopes = {
  auth_server_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_scopes) -> ()

let yojson_of_okta_auth_server_scopes =
  (function
   | { auth_server_id = v_auth_server_id; id = v_id } ->
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
         let arg =
           yojson_of_prop yojson_of_string v_auth_server_id
         in
         ("auth_server_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_auth_server_scopes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_scopes

[@@@deriving.end]

let okta_auth_server_scopes ?id ~auth_server_id () :
    okta_auth_server_scopes =
  { auth_server_id; id }

type t = {
  tf_name : string;
  auth_server_id : string prop;
  id : string prop;
  scopes : scopes list prop;
}

let make ?id ~auth_server_id __id =
  let __type = "okta_auth_server_scopes" in
  let __attrs =
    ({
       tf_name = __id;
       auth_server_id = Prop.computed __type __id "auth_server_id";
       id = Prop.computed __type __id "id";
       scopes = Prop.computed __type __id "scopes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_scopes
        (okta_auth_server_scopes ?id ~auth_server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~auth_server_id __id =
  let (r : _ Tf_core.resource) = make ?id ~auth_server_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
