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

type azurerm_netapp_pool = {
  account_name : string prop;
  encryption_type : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  qos_type : string prop option; [@option]
  resource_group_name : string prop;
  service_level : string prop;
  size_in_tb : float prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_pool) -> ()

let yojson_of_azurerm_netapp_pool =
  (function
   | {
       account_name = v_account_name;
       encryption_type = v_encryption_type;
       id = v_id;
       location = v_location;
       name = v_name;
       qos_type = v_qos_type;
       resource_group_name = v_resource_group_name;
       service_level = v_service_level;
       size_in_tb = v_size_in_tb;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_tb in
         ("size_in_tb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_level in
         ("service_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_qos_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qos_type", arg in
             bnd :: bnds
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
         match v_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_pool

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb () : azurerm_netapp_pool =
  {
    account_name;
    encryption_type;
    id;
    location;
    name;
    qos_type;
    resource_group_name;
    service_level;
    size_in_tb;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  encryption_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  qos_type : string prop;
  resource_group_name : string prop;
  service_level : string prop;
  size_in_tb : float prop;
  tags : string Tf_core.assoc prop;
}

let make ?encryption_type ?id ?qos_type ?tags ?timeouts ~account_name
    ~location ~name ~resource_group_name ~service_level ~size_in_tb
    __id =
  let __type = "azurerm_netapp_pool" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       encryption_type = Prop.computed __type __id "encryption_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       qos_type = Prop.computed __type __id "qos_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_level = Prop.computed __type __id "service_level";
       size_in_tb = Prop.computed __type __id "size_in_tb";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_pool
        (azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
           ?timeouts ~account_name ~location ~name
           ~resource_group_name ~service_level ~size_in_tb ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_type ?id ?qos_type ?tags ?timeouts ~account_name
      ~location ~name ~resource_group_name ~service_level ~size_in_tb
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
