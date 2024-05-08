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

type azurerm_application_insights_web_test = {
  application_insights_id : string prop;
  configuration : string prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  frequency : float prop option; [@option]
  geo_locations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retry_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeout : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_application_insights_web_test) -> ()

let yojson_of_azurerm_application_insights_web_test =
  (function
   | {
       application_insights_id = v_application_insights_id;
       configuration = v_configuration;
       description = v_description;
       enabled = v_enabled;
       frequency = v_frequency;
       geo_locations = v_geo_locations;
       id = v_id;
       kind = v_kind;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       retry_enabled = v_retry_enabled;
       tags = v_tags;
       timeout = v_timeout;
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
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
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
         match v_retry_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retry_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
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
         if [] = v_geo_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_geo_locations
           in
           let bnd = "geo_locations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
         let arg = yojson_of_prop yojson_of_string v_configuration in
         ("configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_insights_id
         in
         ("application_insights_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights_web_test ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights_web_test

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_web_test ?description ?enabled
    ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
    ~application_insights_id ~configuration ~geo_locations ~kind
    ~location ~name ~resource_group_name () :
    azurerm_application_insights_web_test =
  {
    application_insights_id;
    configuration;
    description;
    enabled;
    frequency;
    geo_locations;
    id;
    kind;
    location;
    name;
    resource_group_name;
    retry_enabled;
    tags;
    timeout;
    timeouts;
  }

type t = {
  tf_name : string;
  application_insights_id : string prop;
  configuration : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  geo_locations : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retry_enabled : bool prop;
  synthetic_monitor_id : string prop;
  tags : (string * string) list prop;
  timeout : float prop;
}

let make ?description ?enabled ?frequency ?id ?retry_enabled ?tags
    ?timeout ?timeouts ~application_insights_id ~configuration
    ~geo_locations ~kind ~location ~name ~resource_group_name __id =
  let __type = "azurerm_application_insights_web_test" in
  let __attrs =
    ({
       tf_name = __id;
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       configuration = Prop.computed __type __id "configuration";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       geo_locations = Prop.computed __type __id "geo_locations";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retry_enabled = Prop.computed __type __id "retry_enabled";
       synthetic_monitor_id =
         Prop.computed __type __id "synthetic_monitor_id";
       tags = Prop.computed __type __id "tags";
       timeout = Prop.computed __type __id "timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_web_test
        (azurerm_application_insights_web_test ?description ?enabled
           ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
           ~application_insights_id ~configuration ~geo_locations
           ~kind ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?frequency ?id
    ?retry_enabled ?tags ?timeout ?timeouts ~application_insights_id
    ~configuration ~geo_locations ~kind ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?frequency ?id ?retry_enabled ?tags
      ?timeout ?timeouts ~application_insights_id ~configuration
      ~geo_locations ~kind ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
