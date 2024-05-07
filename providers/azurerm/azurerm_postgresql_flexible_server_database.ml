(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_postgresql_flexible_server_database = {
  charset : string prop option; [@option]
  collation : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  server_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_postgresql_flexible_server_database) -> ()

let yojson_of_azurerm_postgresql_flexible_server_database =
  (function
   | {
       charset = v_charset;
       collation = v_collation;
       id = v_id;
       name = v_name;
       server_id = v_server_id;
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
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
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
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_charset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "charset", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_postgresql_flexible_server_database ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_postgresql_flexible_server_database

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_postgresql_flexible_server_database ?charset ?collation
    ?id ?timeouts ~name ~server_id () :
    azurerm_postgresql_flexible_server_database =
  { charset; collation; id; name; server_id; timeouts }

type t = {
  tf_name : string;
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  server_id : string prop;
}

let make ?charset ?collation ?id ?timeouts ~name ~server_id __id =
  let __type = "azurerm_postgresql_flexible_server_database" in
  let __attrs =
    ({
       tf_name = __id;
       charset = Prop.computed __type __id "charset";
       collation = Prop.computed __type __id "collation";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_postgresql_flexible_server_database
        (azurerm_postgresql_flexible_server_database ?charset
           ?collation ?id ?timeouts ~name ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?charset ?collation ?id ?timeouts ~name
    ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?charset ?collation ?id ?timeouts ~name ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
