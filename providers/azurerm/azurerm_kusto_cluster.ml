(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type optimized_auto_scale = {
  maximum_instances : float prop;
  minimum_instances : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : optimized_auto_scale) -> ()

let yojson_of_optimized_auto_scale =
  (function
   | {
       maximum_instances = v_maximum_instances;
       minimum_instances = v_minimum_instances;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_minimum_instances
         in
         ("minimum_instances", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maximum_instances
         in
         ("maximum_instances", arg) :: bnds
       in
       `Assoc bnds
    : optimized_auto_scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_optimized_auto_scale

[@@@deriving.end]

type sku = {
  capacity : float prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

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

type virtual_network_configuration = {
  data_management_public_ip_id : string prop;
  engine_public_ip_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_network_configuration) -> ()

let yojson_of_virtual_network_configuration =
  (function
   | {
       data_management_public_ip_id = v_data_management_public_ip_id;
       engine_public_ip_id = v_engine_public_ip_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_engine_public_ip_id
         in
         ("engine_public_ip_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_data_management_public_ip_id
         in
         ("data_management_public_ip_id", arg) :: bnds
       in
       `Assoc bnds
    : virtual_network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_network_configuration

[@@@deriving.end]

type azurerm_kusto_cluster = {
  allowed_fqdns : string prop list option; [@option]
  allowed_ip_ranges : string prop list option; [@option]
  auto_stop_enabled : bool prop option; [@option]
  disk_encryption_enabled : bool prop option; [@option]
  double_encryption_enabled : bool prop option; [@option]
  engine : string prop option; [@option]
  id : string prop option; [@option]
  language_extensions : string prop list option; [@option]
  location : string prop;
  name : string prop;
  outbound_network_access_restricted : bool prop option; [@option]
  public_ip_type : string prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  purge_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  streaming_ingestion_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  trusted_external_tenants : string prop list option; [@option]
  zones : string prop list option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  optimized_auto_scale : optimized_auto_scale list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sku : sku list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  virtual_network_configuration : virtual_network_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_cluster) -> ()

let yojson_of_azurerm_kusto_cluster =
  (function
   | {
       allowed_fqdns = v_allowed_fqdns;
       allowed_ip_ranges = v_allowed_ip_ranges;
       auto_stop_enabled = v_auto_stop_enabled;
       disk_encryption_enabled = v_disk_encryption_enabled;
       double_encryption_enabled = v_double_encryption_enabled;
       engine = v_engine;
       id = v_id;
       language_extensions = v_language_extensions;
       location = v_location;
       name = v_name;
       outbound_network_access_restricted =
         v_outbound_network_access_restricted;
       public_ip_type = v_public_ip_type;
       public_network_access_enabled =
         v_public_network_access_enabled;
       purge_enabled = v_purge_enabled;
       resource_group_name = v_resource_group_name;
       streaming_ingestion_enabled = v_streaming_ingestion_enabled;
       tags = v_tags;
       trusted_external_tenants = v_trusted_external_tenants;
       zones = v_zones;
       identity = v_identity;
       optimized_auto_scale = v_optimized_auto_scale;
       sku = v_sku;
       timeouts = v_timeouts;
       virtual_network_configuration =
         v_virtual_network_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_virtual_network_configuration)
               v_virtual_network_configuration
           in
           let bnd = "virtual_network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_optimized_auto_scale then bnds
         else
           let arg =
             (yojson_of_list yojson_of_optimized_auto_scale)
               v_optimized_auto_scale
           in
           let bnd = "optimized_auto_scale", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
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
         match v_trusted_external_tenants with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_external_tenants", arg in
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
         match v_streaming_ingestion_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "streaming_ingestion_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_purge_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_network_access_restricted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "outbound_network_access_restricted", arg in
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
         match v_language_extensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "language_extensions", arg in
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_double_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "double_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disk_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_stop_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_stop_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_fqdns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_cluster

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let optimized_auto_scale ~maximum_instances ~minimum_instances () :
    optimized_auto_scale =
  { maximum_instances; minimum_instances }

let sku ?capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_network_configuration ~data_management_public_ip_id
    ~engine_public_ip_id ~subnet_id () :
    virtual_network_configuration =
  { data_management_public_ip_id; engine_public_ip_id; subnet_id }

let azurerm_kusto_cluster ?allowed_fqdns ?allowed_ip_ranges
    ?auto_stop_enabled ?disk_encryption_enabled
    ?double_encryption_enabled ?engine ?id ?language_extensions
    ?outbound_network_access_restricted ?public_ip_type
    ?public_network_access_enabled ?purge_enabled
    ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
    ?zones ?(identity = []) ?(optimized_auto_scale = []) ?timeouts
    ?(virtual_network_configuration = []) ~location ~name
    ~resource_group_name ~sku () : azurerm_kusto_cluster =
  {
    allowed_fqdns;
    allowed_ip_ranges;
    auto_stop_enabled;
    disk_encryption_enabled;
    double_encryption_enabled;
    engine;
    id;
    language_extensions;
    location;
    name;
    outbound_network_access_restricted;
    public_ip_type;
    public_network_access_enabled;
    purge_enabled;
    resource_group_name;
    streaming_ingestion_enabled;
    tags;
    trusted_external_tenants;
    zones;
    identity;
    optimized_auto_scale;
    sku;
    timeouts;
    virtual_network_configuration;
  }

type t = {
  tf_name : string;
  allowed_fqdns : string list prop;
  allowed_ip_ranges : string list prop;
  auto_stop_enabled : bool prop;
  data_ingestion_uri : string prop;
  disk_encryption_enabled : bool prop;
  double_encryption_enabled : bool prop;
  engine : string prop;
  id : string prop;
  language_extensions : string list prop;
  location : string prop;
  name : string prop;
  outbound_network_access_restricted : bool prop;
  public_ip_type : string prop;
  public_network_access_enabled : bool prop;
  purge_enabled : bool prop;
  resource_group_name : string prop;
  streaming_ingestion_enabled : bool prop;
  tags : (string * string) list prop;
  trusted_external_tenants : string list prop;
  uri : string prop;
  zones : string list prop;
}

let make ?allowed_fqdns ?allowed_ip_ranges ?auto_stop_enabled
    ?disk_encryption_enabled ?double_encryption_enabled ?engine ?id
    ?language_extensions ?outbound_network_access_restricted
    ?public_ip_type ?public_network_access_enabled ?purge_enabled
    ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
    ?zones ?(identity = []) ?(optimized_auto_scale = []) ?timeouts
    ?(virtual_network_configuration = []) ~location ~name
    ~resource_group_name ~sku __id =
  let __type = "azurerm_kusto_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_fqdns = Prop.computed __type __id "allowed_fqdns";
       allowed_ip_ranges =
         Prop.computed __type __id "allowed_ip_ranges";
       auto_stop_enabled =
         Prop.computed __type __id "auto_stop_enabled";
       data_ingestion_uri =
         Prop.computed __type __id "data_ingestion_uri";
       disk_encryption_enabled =
         Prop.computed __type __id "disk_encryption_enabled";
       double_encryption_enabled =
         Prop.computed __type __id "double_encryption_enabled";
       engine = Prop.computed __type __id "engine";
       id = Prop.computed __type __id "id";
       language_extensions =
         Prop.computed __type __id "language_extensions";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_network_access_restricted =
         Prop.computed __type __id
           "outbound_network_access_restricted";
       public_ip_type = Prop.computed __type __id "public_ip_type";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       purge_enabled = Prop.computed __type __id "purge_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       streaming_ingestion_enabled =
         Prop.computed __type __id "streaming_ingestion_enabled";
       tags = Prop.computed __type __id "tags";
       trusted_external_tenants =
         Prop.computed __type __id "trusted_external_tenants";
       uri = Prop.computed __type __id "uri";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cluster
        (azurerm_kusto_cluster ?allowed_fqdns ?allowed_ip_ranges
           ?auto_stop_enabled ?disk_encryption_enabled
           ?double_encryption_enabled ?engine ?id
           ?language_extensions ?outbound_network_access_restricted
           ?public_ip_type ?public_network_access_enabled
           ?purge_enabled ?streaming_ingestion_enabled ?tags
           ?trusted_external_tenants ?zones ~identity
           ~optimized_auto_scale ?timeouts
           ~virtual_network_configuration ~location ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_fqdns ?allowed_ip_ranges
    ?auto_stop_enabled ?disk_encryption_enabled
    ?double_encryption_enabled ?engine ?id ?language_extensions
    ?outbound_network_access_restricted ?public_ip_type
    ?public_network_access_enabled ?purge_enabled
    ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
    ?zones ?(identity = []) ?(optimized_auto_scale = []) ?timeouts
    ?(virtual_network_configuration = []) ~location ~name
    ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_fqdns ?allowed_ip_ranges ?auto_stop_enabled
      ?disk_encryption_enabled ?double_encryption_enabled ?engine ?id
      ?language_extensions ?outbound_network_access_restricted
      ?public_ip_type ?public_network_access_enabled ?purge_enabled
      ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
      ?zones ~identity ~optimized_auto_scale ?timeouts
      ~virtual_network_configuration ~location ~name
      ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
