(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server) -> ()

let yojson_of_okta_auth_server =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : okta_auth_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server

[@@@deriving.end]

let okta_auth_server ?id ~name () : okta_auth_server = { id; name }

type t = {
  tf_name : string;
  audiences : string list prop;
  credentials_last_rotated : string prop;
  credentials_next_rotation : string prop;
  credentials_rotation_mode : string prop;
  description : string prop;
  id : string prop;
  issuer : string prop;
  issuer_mode : string prop;
  kid : string prop;
  name : string prop;
  status : string prop;
}

let make ?id ~name __id =
  let __type = "okta_auth_server" in
  let __attrs =
    ({
       tf_name = __id;
       audiences = Prop.computed __type __id "audiences";
       credentials_last_rotated =
         Prop.computed __type __id "credentials_last_rotated";
       credentials_next_rotation =
         Prop.computed __type __id "credentials_next_rotation";
       credentials_rotation_mode =
         Prop.computed __type __id "credentials_rotation_mode";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       issuer_mode = Prop.computed __type __id "issuer_mode";
       kid = Prop.computed __type __id "kid";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_auth_server (okta_auth_server ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
