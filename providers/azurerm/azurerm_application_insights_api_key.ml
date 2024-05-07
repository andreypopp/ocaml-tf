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

type azurerm_application_insights_api_key = {
  application_insights_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  read_permissions : string prop list option; [@option]
  write_permissions : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_application_insights_api_key) -> ()

let yojson_of_azurerm_application_insights_api_key =
  (function
   | {
       application_insights_id = v_application_insights_id;
       id = v_id;
       name = v_name;
       read_permissions = v_read_permissions;
       write_permissions = v_write_permissions;
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
         match v_write_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "write_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "read_permissions", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_application_insights_id
         in
         ("application_insights_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights_api_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights_api_key

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_application_insights_api_key ?id ?read_permissions
    ?write_permissions ?timeouts ~application_insights_id ~name () :
    azurerm_application_insights_api_key =
  {
    application_insights_id;
    id;
    name;
    read_permissions;
    write_permissions;
    timeouts;
  }

type t = {
  tf_name : string;
  api_key : string prop;
  application_insights_id : string prop;
  id : string prop;
  name : string prop;
  read_permissions : string list prop;
  write_permissions : string list prop;
}

let make ?id ?read_permissions ?write_permissions ?timeouts
    ~application_insights_id ~name __id =
  let __type = "azurerm_application_insights_api_key" in
  let __attrs =
    ({
       tf_name = __id;
       api_key = Prop.computed __type __id "api_key";
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       read_permissions =
         Prop.computed __type __id "read_permissions";
       write_permissions =
         Prop.computed __type __id "write_permissions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_api_key
        (azurerm_application_insights_api_key ?id ?read_permissions
           ?write_permissions ?timeouts ~application_insights_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?read_permissions ?write_permissions
    ?timeouts ~application_insights_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?read_permissions ?write_permissions ?timeouts
      ~application_insights_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
