(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_cluster__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__identity *)

type azurerm_kusto_cluster__optimized_auto_scale = {
  maximum_instances : float prop;  (** maximum_instances *)
  minimum_instances : float prop;  (** minimum_instances *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__optimized_auto_scale *)

type azurerm_kusto_cluster__sku = {
  capacity : float prop option; [@option]  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__sku *)

type azurerm_kusto_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__timeouts *)

type azurerm_kusto_cluster__virtual_network_configuration = {
  data_management_public_ip_id : string prop;
      (** data_management_public_ip_id *)
  engine_public_ip_id : string prop;  (** engine_public_ip_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__virtual_network_configuration *)

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
  identity : azurerm_kusto_cluster__identity list;
  optimized_auto_scale :
    azurerm_kusto_cluster__optimized_auto_scale list;
  sku : azurerm_kusto_cluster__sku list;
  timeouts : azurerm_kusto_cluster__timeouts option;
  virtual_network_configuration :
    azurerm_kusto_cluster__virtual_network_configuration list;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster *)

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

let azurerm_kusto_cluster ?allowed_fqdns ?allowed_ip_ranges
    ?auto_stop_enabled ?disk_encryption_enabled
    ?double_encryption_enabled ?engine ?id ?language_extensions
    ?outbound_network_access_restricted ?public_ip_type
    ?public_network_access_enabled ?purge_enabled
    ?streaming_ingestion_enabled ?tags ?trusted_external_tenants
    ?zones ?timeouts ~location ~name ~resource_group_name ~identity
    ~optimized_auto_scale ~sku ~virtual_network_configuration
    __resource_id =
  let __resource_type = "azurerm_kusto_cluster" in
  let __resource =
    ({
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
      : azurerm_kusto_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cluster __resource);
  let __resource_attributes =
    ({
       allowed_fqdns =
         Prop.computed __resource_type __resource_id "allowed_fqdns";
       allowed_ip_ranges =
         Prop.computed __resource_type __resource_id
           "allowed_ip_ranges";
       auto_stop_enabled =
         Prop.computed __resource_type __resource_id
           "auto_stop_enabled";
       data_ingestion_uri =
         Prop.computed __resource_type __resource_id
           "data_ingestion_uri";
       disk_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "disk_encryption_enabled";
       double_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "double_encryption_enabled";
       engine = Prop.computed __resource_type __resource_id "engine";
       id = Prop.computed __resource_type __resource_id "id";
       language_extensions =
         Prop.computed __resource_type __resource_id
           "language_extensions";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_network_access_restricted =
         Prop.computed __resource_type __resource_id
           "outbound_network_access_restricted";
       public_ip_type =
         Prop.computed __resource_type __resource_id "public_ip_type";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       purge_enabled =
         Prop.computed __resource_type __resource_id "purge_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       streaming_ingestion_enabled =
         Prop.computed __resource_type __resource_id
           "streaming_ingestion_enabled";
       tags = Prop.computed __resource_type __resource_id "tags";
       trusted_external_tenants =
         Prop.computed __resource_type __resource_id
           "trusted_external_tenants";
       uri = Prop.computed __resource_type __resource_id "uri";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
