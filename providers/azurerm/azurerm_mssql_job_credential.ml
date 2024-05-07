(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_mssql_job_credential = {
  id : string prop option; [@option]
  job_agent_id : string prop;
  name : string prop;
  password : string prop;
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_job_credential) -> ()

let yojson_of_azurerm_mssql_job_credential =
  (function
   | {
       id = v_id;
       job_agent_id = v_job_agent_id;
       name = v_name;
       password = v_password;
       username = v_username;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_agent_id in
         ("job_agent_id", arg) :: bnds
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
    : azurerm_mssql_job_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_job_credential

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id ~name
    ~password ~username () : azurerm_mssql_job_credential =
  { id; job_agent_id; name; password; username; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  job_agent_id : string prop;
  name : string prop;
  password : string prop;
  username : string prop;
}

let make ?id ?timeouts ~job_agent_id ~name ~password ~username __id =
  let __type = "azurerm_mssql_job_credential" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       job_agent_id = Prop.computed __type __id "job_agent_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_job_credential
        (azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id
           ~name ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~job_agent_id ~name ~password
    ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~job_agent_id ~name ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
