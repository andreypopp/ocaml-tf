(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type optimized_auto_scale = {
  maximum_instances : float prop;  (** maximum_instances *)
  minimum_instances : float prop;  (** minimum_instances *)
}
[@@deriving yojson_of]
(** optimized_auto_scale *)

type sku = {
  capacity : float prop option; [@option]  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type virtual_network_configuration = {
  data_management_public_ip_id : string prop;
      (** data_management_public_ip_id *)
  engine_public_ip_id : string prop;  (** engine_public_ip_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** virtual_network_configuration *)

type azurerm_kusto_cluster = {
  allowed_fqdns : string prop list option; [@option]
      (** allowed_fqdns *)
  allowed_ip_ranges : string prop list option; [@option]
      (** allowed_ip_ranges *)
  auto_stop_enabled : bool prop option; [@option]
      (** auto_stop_enabled *)
  disk_encryption_enabled : bool prop option; [@option]
      (** disk_encryption_enabled *)
  double_encryption_enabled : bool prop option; [@option]
      (** double_encryption_enabled *)
  engine : string prop option; [@option]  (** engine *)
  id : string prop option; [@option]  (** id *)
  language_extensions : string prop list option; [@option]
      (** language_extensions *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  outbound_network_access_restricted : bool prop option; [@option]
      (** outbound_network_access_restricted *)
  public_ip_type : string prop option; [@option]
      (** public_ip_type *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  purge_enabled : bool prop option; [@option]  (** purge_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  streaming_ingestion_enabled : bool prop option; [@option]
      (** streaming_ingestion_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trusted_external_tenants : string prop list option; [@option]
      (** trusted_external_tenants *)
  zones : string prop list option; [@option]  (** zones *)
  identity : identity list;
  optimized_auto_scale : optimized_auto_scale list;
  sku : sku list;
  timeouts : timeouts option;
  virtual_network_configuration : virtual_network_configuration list;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster *)

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
    ?zones ?timeouts ~location ~name ~resource_group_name ~identity
    ~optimized_auto_scale ~sku ~virtual_network_configuration () :
    azurerm_kusto_cluster =
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
    ?zones ?timeouts ~location ~name ~resource_group_name ~identity
    ~optimized_auto_scale ~sku ~virtual_network_configuration __id =
  let __type = "azurerm_kusto_cluster" in
  let __attrs =
    ({
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
           ?trusted_external_tenants ?zones ?timeouts ~location ~name
           ~resource_group_name ~identity ~optimized_auto_scale ~sku
           ~virtual_network_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_fqdns ?allowed_ip_ranges
    ?auto_stop_enabled ?disk_encryption_enabled
    ?double_encryption_enabled ?engine ?id ?language_extensions
    ?outbound_network_access_restricted ?public_ip_type
    ?public_network_access_enabled ?purge_enabled
    ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
    ?zones ?timeouts ~location ~name ~resource_group_name ~identity
    ~optimized_auto_scale ~sku ~virtual_network_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_fqdns ?allowed_ip_ranges ?auto_stop_enabled
      ?disk_encryption_enabled ?double_encryption_enabled ?engine ?id
      ?language_extensions ?outbound_network_access_restricted
      ?public_ip_type ?public_network_access_enabled ?purge_enabled
      ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
      ?zones ?timeouts ~location ~name ~resource_group_name ~identity
      ~optimized_auto_scale ~sku ~virtual_network_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
