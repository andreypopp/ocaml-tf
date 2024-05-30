(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server_policy = {
  auth_server_id : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_policy) -> ()

let yojson_of_okta_auth_server_policy =
  (function
   | { auth_server_id = v_auth_server_id; id = v_id; name = v_name }
     ->
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auth_server_id
         in
         ("auth_server_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_auth_server_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_policy

[@@@deriving.end]

let okta_auth_server_policy ?id ~auth_server_id ~name () :
    okta_auth_server_policy =
  { auth_server_id; id; name }

type t = {
  tf_name : string;
  assigned_clients : string list prop;
  auth_server_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

let make ?id ~auth_server_id ~name __id =
  let __type = "okta_auth_server_policy" in
  let __attrs =
    ({
       tf_name = __id;
       assigned_clients =
         Prop.computed __type __id "assigned_clients";
       auth_server_id = Prop.computed __type __id "auth_server_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_policy
        (okta_auth_server_policy ?id ~auth_server_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~auth_server_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~auth_server_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
