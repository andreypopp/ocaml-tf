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

type azurerm_servicebus_namespace = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_namespace) -> ()

let yojson_of_azurerm_servicebus_namespace =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_namespace

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_servicebus_namespace ?id ?timeouts ~name
    ~resource_group_name () : azurerm_servicebus_namespace =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  capacity : float prop;
  default_primary_connection_string : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_key : string prop;
  endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  premium_messaging_partitions : float prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_servicebus_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       capacity = Prop.computed __type __id "capacity";
       default_primary_connection_string =
         Prop.computed __type __id
           "default_primary_connection_string";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_connection_string =
         Prop.computed __type __id
           "default_secondary_connection_string";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       premium_messaging_partitions =
         Prop.computed __type __id "premium_messaging_partitions";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace
        (azurerm_servicebus_namespace ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
