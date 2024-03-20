(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type accounts__restorable_locations = {
  creation_time : string prop;
  deletion_time : string prop;
  location : string prop;
  regional_database_account_instance_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accounts__restorable_locations) -> ()

let yojson_of_accounts__restorable_locations =
  (function
   | {
       creation_time = v_creation_time;
       deletion_time = v_deletion_time;
       location = v_location;
       regional_database_account_instance_id =
         v_regional_database_account_instance_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_regional_database_account_instance_id
         in
         ("regional_database_account_instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deletion_time in
         ("deletion_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_time in
         ("creation_time", arg) :: bnds
       in
       `Assoc bnds
    : accounts__restorable_locations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accounts__restorable_locations

[@@@deriving.end]

type accounts = {
  api_type : string prop;
  creation_time : string prop;
  deletion_time : string prop;
  id : string prop;
  restorable_locations : accounts__restorable_locations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accounts) -> ()

let yojson_of_accounts =
  (function
   | {
       api_type = v_api_type;
       creation_time = v_creation_time;
       deletion_time = v_deletion_time;
       id = v_id;
       restorable_locations = v_restorable_locations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_accounts__restorable_locations
             v_restorable_locations
         in
         ("restorable_locations", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deletion_time in
         ("deletion_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_time in
         ("creation_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_type in
         ("api_type", arg) :: bnds
       in
       `Assoc bnds
    : accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accounts

[@@@deriving.end]

type azurerm_cosmosdb_restorable_database_accounts = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_restorable_database_accounts) -> ()

let yojson_of_azurerm_cosmosdb_restorable_database_accounts =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
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
       `Assoc bnds
    : azurerm_cosmosdb_restorable_database_accounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_restorable_database_accounts

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cosmosdb_restorable_database_accounts ?id ?timeouts
    ~location ~name () :
    azurerm_cosmosdb_restorable_database_accounts =
  { id; location; name; timeouts }

type t = {
  accounts : accounts list prop;
  id : string prop;
  location : string prop;
  name : string prop;
}

let make ?id ?timeouts ~location ~name __id =
  let __type = "azurerm_cosmosdb_restorable_database_accounts" in
  let __attrs =
    ({
       accounts = Prop.computed __type __id "accounts";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_restorable_database_accounts
        (azurerm_cosmosdb_restorable_database_accounts ?id ?timeouts
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
