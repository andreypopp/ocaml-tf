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

type azurerm_automation_watcher = {
  automation_account_id : string prop;
  description : string prop option; [@option]
  etag : string prop option; [@option]
  execution_frequency_in_seconds : float prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  script_name : string prop;
  script_parameters : (string * string prop) list option; [@option]
  script_run_on : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_watcher) -> ()

let yojson_of_azurerm_automation_watcher =
  (function
   | {
       automation_account_id = v_automation_account_id;
       description = v_description;
       etag = v_etag;
       execution_frequency_in_seconds =
         v_execution_frequency_in_seconds;
       id = v_id;
       location = v_location;
       name = v_name;
       script_name = v_script_name;
       script_parameters = v_script_parameters;
       script_run_on = v_script_run_on;
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
         let arg = yojson_of_prop yojson_of_string v_script_run_on in
         ("script_run_on", arg) :: bnds
       in
       let bnds =
         match v_script_parameters with
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
             let bnd = "script_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script_name in
         ("script_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float
             v_execution_frequency_in_seconds
         in
         ("execution_frequency_in_seconds", arg) :: bnds
       in
       let bnds =
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_id
         in
         ("automation_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_watcher -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_watcher

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_watcher ?description ?etag ?id
    ?script_parameters ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on () : azurerm_automation_watcher =
  {
    automation_account_id;
    description;
    etag;
    execution_frequency_in_seconds;
    id;
    location;
    name;
    script_name;
    script_parameters;
    script_run_on;
    tags;
    timeouts;
  }

type t = {
  automation_account_id : string prop;
  description : string prop;
  etag : string prop;
  execution_frequency_in_seconds : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  script_name : string prop;
  script_parameters : (string * string) list prop;
  script_run_on : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?description ?etag ?id ?script_parameters ?tags ?timeouts
    ~automation_account_id ~execution_frequency_in_seconds ~location
    ~name ~script_name ~script_run_on __id =
  let __type = "azurerm_automation_watcher" in
  let __attrs =
    ({
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       execution_frequency_in_seconds =
         Prop.computed __type __id "execution_frequency_in_seconds";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       script_name = Prop.computed __type __id "script_name";
       script_parameters =
         Prop.computed __type __id "script_parameters";
       script_run_on = Prop.computed __type __id "script_run_on";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_watcher
        (azurerm_automation_watcher ?description ?etag ?id
           ?script_parameters ?tags ?timeouts ~automation_account_id
           ~execution_frequency_in_seconds ~location ~name
           ~script_name ~script_run_on ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?etag ?id ?script_parameters
    ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on __id =
  let (r : _ Tf_core.resource) =
    make ?description ?etag ?id ?script_parameters ?tags ?timeouts
      ~automation_account_id ~execution_frequency_in_seconds
      ~location ~name ~script_name ~script_run_on __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
