(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server_policy = {
  auth_server_id : string prop;
  client_whitelist : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  id : string prop option; [@option]
  name : string prop;
  priority : float prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_policy) -> ()

let yojson_of_okta_auth_server_policy =
  (function
   | {
       auth_server_id = v_auth_server_id;
       client_whitelist = v_client_whitelist;
       description = v_description;
       id = v_id;
       name = v_name;
       priority = v_priority;
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
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_whitelist then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_client_whitelist
           in
           let bnd = "client_whitelist", arg in
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

let okta_auth_server_policy ?id ?status ~auth_server_id
    ~client_whitelist ~description ~name ~priority () :
    okta_auth_server_policy =
  {
    auth_server_id;
    client_whitelist;
    description;
    id;
    name;
    priority;
    status;
  }

type t = {
  tf_name : string;
  auth_server_id : string prop;
  client_whitelist : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  status : string prop;
}

let make ?id ?status ~auth_server_id ~client_whitelist ~description
    ~name ~priority __id =
  let __type = "okta_auth_server_policy" in
  let __attrs =
    ({
       tf_name = __id;
       auth_server_id = Prop.computed __type __id "auth_server_id";
       client_whitelist =
         Prop.computed __type __id "client_whitelist";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_policy
        (okta_auth_server_policy ?id ?status ~auth_server_id
           ~client_whitelist ~description ~name ~priority ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~auth_server_id ~client_whitelist
    ~description ~name ~priority __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~auth_server_id ~client_whitelist ~description
      ~name ~priority __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
