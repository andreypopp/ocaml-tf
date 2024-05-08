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

type azurerm_container_registry_webhook = {
  actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_headers : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  registry_name : string prop;
  resource_group_name : string prop;
  scope : string prop option; [@option]
  service_uri : string prop;
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry_webhook) -> ()

let yojson_of_azurerm_container_registry_webhook =
  (function
   | {
       actions = v_actions;
       custom_headers = v_custom_headers;
       id = v_id;
       location = v_location;
       name = v_name;
       registry_name = v_registry_name;
       resource_group_name = v_resource_group_name;
       scope = v_scope;
       service_uri = v_service_uri;
       status = v_status;
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_uri in
         ("service_uri", arg) :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_name in
         ("registry_name", arg) :: bnds
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
         match v_custom_headers with
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
             let bnd = "custom_headers", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_registry_webhook ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_registry_webhook

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_webhook ?custom_headers ?id ?scope
    ?status ?tags ?timeouts ~actions ~location ~name ~registry_name
    ~resource_group_name ~service_uri () :
    azurerm_container_registry_webhook =
  {
    actions;
    custom_headers;
    id;
    location;
    name;
    registry_name;
    resource_group_name;
    scope;
    service_uri;
    status;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  actions : string list prop;
  custom_headers : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  registry_name : string prop;
  resource_group_name : string prop;
  scope : string prop;
  service_uri : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?custom_headers ?id ?scope ?status ?tags ?timeouts ~actions
    ~location ~name ~registry_name ~resource_group_name ~service_uri
    __id =
  let __type = "azurerm_container_registry_webhook" in
  let __attrs =
    ({
       tf_name = __id;
       actions = Prop.computed __type __id "actions";
       custom_headers = Prop.computed __type __id "custom_headers";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       registry_name = Prop.computed __type __id "registry_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope = Prop.computed __type __id "scope";
       service_uri = Prop.computed __type __id "service_uri";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_webhook
        (azurerm_container_registry_webhook ?custom_headers ?id
           ?scope ?status ?tags ?timeouts ~actions ~location ~name
           ~registry_name ~resource_group_name ~service_uri ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_headers ?id ?scope ?status ?tags
    ?timeouts ~actions ~location ~name ~registry_name
    ~resource_group_name ~service_uri __id =
  let (r : _ Tf_core.resource) =
    make ?custom_headers ?id ?scope ?status ?tags ?timeouts ~actions
      ~location ~name ~registry_name ~resource_group_name
      ~service_uri __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
