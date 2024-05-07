(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = { endpoint : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | { endpoint = v_endpoint; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type resource_type = {
  endpoint : string prop;
  name : string prop;
  routing_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_type) -> ()

let yojson_of_resource_type =
  (function
   | {
       endpoint = v_endpoint;
       name = v_name;
       routing_type = v_routing_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_routing_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : resource_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_type

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

type validation = { specification : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation) -> ()

let yojson_of_validation =
  (function
   | { specification = v_specification } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_specification in
         ("specification", arg) :: bnds
       in
       `Assoc bnds
    : validation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation

[@@@deriving.end]

type azurerm_custom_provider = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  action : action list;
  resource_type : resource_type list;
  timeouts : timeouts option;
  validation : validation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_custom_provider) -> ()

let yojson_of_azurerm_custom_provider =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       action = v_action;
       resource_type = v_resource_type;
       timeouts = v_timeouts;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation v_validation
         in
         ("validation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_resource_type v_resource_type
         in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_custom_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_custom_provider

[@@@deriving.end]

let action ~endpoint ~name () : action = { endpoint; name }

let resource_type ?routing_type ~endpoint ~name () : resource_type =
  { endpoint; name; routing_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let validation ~specification () : validation = { specification }

let azurerm_custom_provider ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~action ~resource_type ~validation () :
    azurerm_custom_provider =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    action;
    resource_type;
    timeouts;
    validation;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~action ~resource_type ~validation __id =
  let __type = "azurerm_custom_provider" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_custom_provider
        (azurerm_custom_provider ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~action ~resource_type ~validation ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~action ~resource_type ~validation __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~action ~resource_type ~validation __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
