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

type azurerm_spring_cloud_app_mysql_association = {
  database_name : string prop;
  id : string prop option; [@option]
  mysql_server_id : string prop;
  name : string prop;
  password : string prop;
  spring_cloud_app_id : string prop;
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_app_mysql_association) -> ()

let yojson_of_azurerm_spring_cloud_app_mysql_association =
  (function
   | {
       database_name = v_database_name;
       id = v_id;
       mysql_server_id = v_mysql_server_id;
       name = v_name;
       password = v_password;
       spring_cloud_app_id = v_spring_cloud_app_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_app_id
         in
         ("spring_cloud_app_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_mysql_server_id
         in
         ("mysql_server_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_app_mysql_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_app_mysql_association

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app_mysql_association ?id ?timeouts
    ~database_name ~mysql_server_id ~name ~password
    ~spring_cloud_app_id ~username () :
    azurerm_spring_cloud_app_mysql_association =
  {
    database_name;
    id;
    mysql_server_id;
    name;
    password;
    spring_cloud_app_id;
    username;
    timeouts;
  }

type t = {
  database_name : string prop;
  id : string prop;
  mysql_server_id : string prop;
  name : string prop;
  password : string prop;
  spring_cloud_app_id : string prop;
  username : string prop;
}

let make ?id ?timeouts ~database_name ~mysql_server_id ~name
    ~password ~spring_cloud_app_id ~username __id =
  let __type = "azurerm_spring_cloud_app_mysql_association" in
  let __attrs =
    ({
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       mysql_server_id = Prop.computed __type __id "mysql_server_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_app_mysql_association
        (azurerm_spring_cloud_app_mysql_association ?id ?timeouts
           ~database_name ~mysql_server_id ~name ~password
           ~spring_cloud_app_id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~database_name ~mysql_server_id
    ~name ~password ~spring_cloud_app_id ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~database_name ~mysql_server_id ~name
      ~password ~spring_cloud_app_id ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
