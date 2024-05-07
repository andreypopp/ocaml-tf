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

type azurerm_kusto_script = {
  continue_on_errors_enabled : bool prop option; [@option]
  database_id : string prop;
  force_an_update_when_value_changed : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  sas_token : string prop option; [@option]
  script_content : string prop option; [@option]
  url : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_script) -> ()

let yojson_of_azurerm_kusto_script =
  (function
   | {
       continue_on_errors_enabled = v_continue_on_errors_enabled;
       database_id = v_database_id;
       force_an_update_when_value_changed =
         v_force_an_update_when_value_changed;
       id = v_id;
       name = v_name;
       sas_token = v_sas_token;
       script_content = v_script_content;
       url = v_url;
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
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_script_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_content", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sas_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sas_token", arg in
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
         match v_force_an_update_when_value_changed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_an_update_when_value_changed", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_id in
         ("database_id", arg) :: bnds
       in
       let bnds =
         match v_continue_on_errors_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "continue_on_errors_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_script -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_script

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_script ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name () :
    azurerm_kusto_script =
  {
    continue_on_errors_enabled;
    database_id;
    force_an_update_when_value_changed;
    id;
    name;
    sas_token;
    script_content;
    url;
    timeouts;
  }

type t = {
  tf_name : string;
  continue_on_errors_enabled : bool prop;
  database_id : string prop;
  force_an_update_when_value_changed : string prop;
  id : string prop;
  name : string prop;
  sas_token : string prop;
  script_content : string prop;
  url : string prop;
}

let make ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name __id =
  let __type = "azurerm_kusto_script" in
  let __attrs =
    ({
       tf_name = __id;
       continue_on_errors_enabled =
         Prop.computed __type __id "continue_on_errors_enabled";
       database_id = Prop.computed __type __id "database_id";
       force_an_update_when_value_changed =
         Prop.computed __type __id
           "force_an_update_when_value_changed";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sas_token = Prop.computed __type __id "sas_token";
       script_content = Prop.computed __type __id "script_content";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_script
        (azurerm_kusto_script ?continue_on_errors_enabled
           ?force_an_update_when_value_changed ?id ?sas_token
           ?script_content ?url ?timeouts ~database_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?continue_on_errors_enabled
      ?force_an_update_when_value_changed ?id ?sas_token
      ?script_content ?url ?timeouts ~database_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
