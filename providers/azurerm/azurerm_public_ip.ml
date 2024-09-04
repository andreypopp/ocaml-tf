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

type azurerm_public_ip = {
  allocation_method : string prop;
  ddos_protection_mode : string prop option; [@option]
  ddos_protection_plan_id : string prop option; [@option]
  domain_name_label : string prop option; [@option]
  edge_zone : string prop option; [@option]
  id : string prop option; [@option]
  idle_timeout_in_minutes : float prop option; [@option]
  ip_tags : string prop Tf_core.assoc option; [@option]
  ip_version : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_ip_prefix_id : string prop option; [@option]
  resource_group_name : string prop;
  reverse_fqdn : string prop option; [@option]
  sku : string prop option; [@option]
  sku_tier : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  zones : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_public_ip) -> ()

let yojson_of_azurerm_public_ip =
  (function
   | {
       allocation_method = v_allocation_method;
       ddos_protection_mode = v_ddos_protection_mode;
       ddos_protection_plan_id = v_ddos_protection_plan_id;
       domain_name_label = v_domain_name_label;
       edge_zone = v_edge_zone;
       id = v_id;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       ip_tags = v_ip_tags;
       ip_version = v_ip_version;
       location = v_location;
       name = v_name;
       public_ip_prefix_id = v_public_ip_prefix_id;
       resource_group_name = v_resource_group_name;
       reverse_fqdn = v_reverse_fqdn;
       sku = v_sku;
       sku_tier = v_sku_tier;
       tags = v_tags;
       zones = v_zones;
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
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
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
         match v_sku_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reverse_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reverse_fqdn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_ip_prefix_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_prefix_id", arg in
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
         match v_ip_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "ip_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_in_minutes", arg in
             bnd :: bnds
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
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_name_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ddos_protection_plan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ddos_protection_plan_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ddos_protection_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ddos_protection_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_method
         in
         ("allocation_method", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_public_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_public_ip

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_public_ip ?ddos_protection_mode ?ddos_protection_plan_id
    ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
    ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
    ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
    ~name ~resource_group_name () : azurerm_public_ip =
  {
    allocation_method;
    ddos_protection_mode;
    ddos_protection_plan_id;
    domain_name_label;
    edge_zone;
    id;
    idle_timeout_in_minutes;
    ip_tags;
    ip_version;
    location;
    name;
    public_ip_prefix_id;
    resource_group_name;
    reverse_fqdn;
    sku;
    sku_tier;
    tags;
    zones;
    timeouts;
  }

type t = {
  tf_name : string;
  allocation_method : string prop;
  ddos_protection_mode : string prop;
  ddos_protection_plan_id : string prop;
  domain_name_label : string prop;
  edge_zone : string prop;
  fqdn : string prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  ip_address : string prop;
  ip_tags : string Tf_core.assoc prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  public_ip_prefix_id : string prop;
  resource_group_name : string prop;
  reverse_fqdn : string prop;
  sku : string prop;
  sku_tier : string prop;
  tags : string Tf_core.assoc prop;
  zones : string list prop;
}

let make ?ddos_protection_mode ?ddos_protection_plan_id
    ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
    ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
    ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_public_ip" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_method =
         Prop.computed __type __id "allocation_method";
       ddos_protection_mode =
         Prop.computed __type __id "ddos_protection_mode";
       ddos_protection_plan_id =
         Prop.computed __type __id "ddos_protection_plan_id";
       domain_name_label =
         Prop.computed __type __id "domain_name_label";
       edge_zone = Prop.computed __type __id "edge_zone";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       ip_address = Prop.computed __type __id "ip_address";
       ip_tags = Prop.computed __type __id "ip_tags";
       ip_version = Prop.computed __type __id "ip_version";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_ip_prefix_id =
         Prop.computed __type __id "public_ip_prefix_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       reverse_fqdn = Prop.computed __type __id "reverse_fqdn";
       sku = Prop.computed __type __id "sku";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_public_ip
        (azurerm_public_ip ?ddos_protection_mode
           ?ddos_protection_plan_id ?domain_name_label ?edge_zone ?id
           ?idle_timeout_in_minutes ?ip_tags ?ip_version
           ?public_ip_prefix_id ?reverse_fqdn ?sku ?sku_tier ?tags
           ?zones ?timeouts ~allocation_method ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?ddos_protection_mode
    ?ddos_protection_plan_id ?domain_name_label ?edge_zone ?id
    ?idle_timeout_in_minutes ?ip_tags ?ip_version
    ?public_ip_prefix_id ?reverse_fqdn ?sku ?sku_tier ?tags ?zones
    ?timeouts ~allocation_method ~location ~name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?ddos_protection_mode ?ddos_protection_plan_id
      ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
      ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
      ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
