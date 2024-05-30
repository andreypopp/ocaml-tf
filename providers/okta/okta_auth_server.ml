(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server = {
  audiences : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  credentials_rotation_mode : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  issuer_mode : string prop option; [@option]
  name : string prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server) -> ()

let yojson_of_okta_auth_server =
  (function
   | {
       audiences = v_audiences;
       credentials_rotation_mode = v_credentials_rotation_mode;
       description = v_description;
       id = v_id;
       issuer_mode = v_issuer_mode;
       name = v_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_issuer_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_mode", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials_rotation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials_rotation_mode", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audiences then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_audiences
           in
           let bnd = "audiences", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : okta_auth_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server

[@@@deriving.end]

let okta_auth_server ?credentials_rotation_mode ?description ?id
    ?issuer_mode ?status ~audiences ~name () : okta_auth_server =
  {
    audiences;
    credentials_rotation_mode;
    description;
    id;
    issuer_mode;
    name;
    status;
  }

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

let make ?credentials_rotation_mode ?description ?id ?issuer_mode
    ?status ~audiences ~name __id =
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
    json =
      yojson_of_okta_auth_server
        (okta_auth_server ?credentials_rotation_mode ?description ?id
           ?issuer_mode ?status ~audiences ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?credentials_rotation_mode ?description ?id
    ?issuer_mode ?status ~audiences ~name __id =
  let (r : _ Tf_core.resource) =
    make ?credentials_rotation_mode ?description ?id ?issuer_mode
      ?status ~audiences ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
