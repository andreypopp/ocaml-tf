(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type security = {
  refresh_token : string prop option; [@option]
  token : string prop;
  token_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security) -> ()

let yojson_of_security =
  (function
   | {
       refresh_token = v_refresh_token;
       token = v_token;
       token_type = v_token_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token_type in
         ("token_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security

[@@@deriving.end]

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

type azurerm_automation_source_control = {
  automatic_sync : bool prop option; [@option]
  automation_account_id : string prop;
  branch : string prop option; [@option]
  description : string prop option; [@option]
  folder_path : string prop;
  id : string prop option; [@option]
  name : string prop;
  publish_runbook_enabled : bool prop option; [@option]
  repository_url : string prop;
  source_control_type : string prop;
  security : security list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_source_control) -> ()

let yojson_of_azurerm_automation_source_control =
  (function
   | {
       automatic_sync = v_automatic_sync;
       automation_account_id = v_automation_account_id;
       branch = v_branch;
       description = v_description;
       folder_path = v_folder_path;
       id = v_id;
       name = v_name;
       publish_runbook_enabled = v_publish_runbook_enabled;
       repository_url = v_repository_url;
       source_control_type = v_source_control_type;
       security = v_security;
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
         let arg = yojson_of_list yojson_of_security v_security in
         ("security", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_control_type
         in
         ("source_control_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       let bnds =
         match v_publish_runbook_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish_runbook_enabled", arg in
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
         let arg = yojson_of_prop yojson_of_string v_folder_path in
         ("folder_path", arg) :: bnds
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
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_id
         in
         ("automation_account_id", arg) :: bnds
       in
       let bnds =
         match v_automatic_sync with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_sync", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_automation_source_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_source_control

[@@@deriving.end]

let security ?refresh_token ~token ~token_type () : security =
  { refresh_token; token; token_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_source_control ?automatic_sync ?branch
    ?description ?id ?publish_runbook_enabled ?timeouts
    ~automation_account_id ~folder_path ~name ~repository_url
    ~source_control_type ~security () :
    azurerm_automation_source_control =
  {
    automatic_sync;
    automation_account_id;
    branch;
    description;
    folder_path;
    id;
    name;
    publish_runbook_enabled;
    repository_url;
    source_control_type;
    security;
    timeouts;
  }

type t = {
  tf_name : string;
  automatic_sync : bool prop;
  automation_account_id : string prop;
  branch : string prop;
  description : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  publish_runbook_enabled : bool prop;
  repository_url : string prop;
  source_control_type : string prop;
}

let make ?automatic_sync ?branch ?description ?id
    ?publish_runbook_enabled ?timeouts ~automation_account_id
    ~folder_path ~name ~repository_url ~source_control_type ~security
    __id =
  let __type = "azurerm_automation_source_control" in
  let __attrs =
    ({
       tf_name = __id;
       automatic_sync = Prop.computed __type __id "automatic_sync";
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       branch = Prop.computed __type __id "branch";
       description = Prop.computed __type __id "description";
       folder_path = Prop.computed __type __id "folder_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       publish_runbook_enabled =
         Prop.computed __type __id "publish_runbook_enabled";
       repository_url = Prop.computed __type __id "repository_url";
       source_control_type =
         Prop.computed __type __id "source_control_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_source_control
        (azurerm_automation_source_control ?automatic_sync ?branch
           ?description ?id ?publish_runbook_enabled ?timeouts
           ~automation_account_id ~folder_path ~name ~repository_url
           ~source_control_type ~security ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_sync ?branch ?description ?id
    ?publish_runbook_enabled ?timeouts ~automation_account_id
    ~folder_path ~name ~repository_url ~source_control_type ~security
    __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_sync ?branch ?description ?id
      ?publish_runbook_enabled ?timeouts ~automation_account_id
      ~folder_path ~name ~repository_url ~source_control_type
      ~security __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
