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

type azurerm_sql_elasticpool = {
  db_dtu_max : float prop option; [@option]
  db_dtu_min : float prop option; [@option]
  dtu : float prop;
  edition : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  pool_size : float prop option; [@option]
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sql_elasticpool) -> ()

let yojson_of_azurerm_sql_elasticpool =
  (function
   | {
       db_dtu_max = v_db_dtu_max;
       db_dtu_min = v_db_dtu_min;
       dtu = v_dtu;
       edition = v_edition;
       id = v_id;
       location = v_location;
       name = v_name;
       pool_size = v_pool_size;
       resource_group_name = v_resource_group_name;
       server_name = v_server_name;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_pool_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pool_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_edition in
         ("edition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_dtu in
         ("dtu", arg) :: bnds
       in
       let bnds =
         match v_db_dtu_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "db_dtu_min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_dtu_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "db_dtu_max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sql_elasticpool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sql_elasticpool

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_elasticpool ?db_dtu_max ?db_dtu_min ?id ?pool_size
    ?tags ?timeouts ~dtu ~edition ~location ~name
    ~resource_group_name ~server_name () : azurerm_sql_elasticpool =
  {
    db_dtu_max;
    db_dtu_min;
    dtu;
    edition;
    id;
    location;
    name;
    pool_size;
    resource_group_name;
    server_name;
    tags;
    timeouts;
  }

type t = {
  creation_date : string prop;
  db_dtu_max : float prop;
  db_dtu_min : float prop;
  dtu : float prop;
  edition : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_size : float prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
}

let make ?db_dtu_max ?db_dtu_min ?id ?pool_size ?tags ?timeouts ~dtu
    ~edition ~location ~name ~resource_group_name ~server_name __id =
  let __type = "azurerm_sql_elasticpool" in
  let __attrs =
    ({
       creation_date = Prop.computed __type __id "creation_date";
       db_dtu_max = Prop.computed __type __id "db_dtu_max";
       db_dtu_min = Prop.computed __type __id "db_dtu_min";
       dtu = Prop.computed __type __id "dtu";
       edition = Prop.computed __type __id "edition";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pool_size = Prop.computed __type __id "pool_size";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_elasticpool
        (azurerm_sql_elasticpool ?db_dtu_max ?db_dtu_min ?id
           ?pool_size ?tags ?timeouts ~dtu ~edition ~location ~name
           ~resource_group_name ~server_name ());
    attrs = __attrs;
  }

let register ?tf_module ?db_dtu_max ?db_dtu_min ?id ?pool_size ?tags
    ?timeouts ~dtu ~edition ~location ~name ~resource_group_name
    ~server_name __id =
  let (r : _ Tf_core.resource) =
    make ?db_dtu_max ?db_dtu_min ?id ?pool_size ?tags ?timeouts ~dtu
      ~edition ~location ~name ~resource_group_name ~server_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
