(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_cluster__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__identity *)

type azurerm_kusto_cluster__optimized_auto_scale = {
  maximum_instances : float;  (** maximum_instances *)
  minimum_instances : float;  (** minimum_instances *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__optimized_auto_scale *)

type azurerm_kusto_cluster__sku = {
  capacity : float option; [@option]  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__sku *)

type azurerm_kusto_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__timeouts *)

type azurerm_kusto_cluster__virtual_network_configuration = {
  data_management_public_ip_id : string;
      (** data_management_public_ip_id *)
  engine_public_ip_id : string;  (** engine_public_ip_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster__virtual_network_configuration *)

type azurerm_kusto_cluster = {
  allowed_fqdns : string list option; [@option]  (** allowed_fqdns *)
  allowed_ip_ranges : string list option; [@option]
      (** allowed_ip_ranges *)
  auto_stop_enabled : bool option; [@option]
      (** auto_stop_enabled *)
  disk_encryption_enabled : bool option; [@option]
      (** disk_encryption_enabled *)
  double_encryption_enabled : bool option; [@option]
      (** double_encryption_enabled *)
  engine : string option; [@option]  (** engine *)
  language_extensions : string list option; [@option]
      (** language_extensions *)
  location : string;  (** location *)
  name : string;  (** name *)
  outbound_network_access_restricted : bool option; [@option]
      (** outbound_network_access_restricted *)
  public_ip_type : string option; [@option]  (** public_ip_type *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  purge_enabled : bool option; [@option]  (** purge_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  streaming_ingestion_enabled : bool option; [@option]
      (** streaming_ingestion_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
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

let azurerm_kusto_cluster ?allowed_fqdns ?allowed_ip_ranges
    ?auto_stop_enabled ?disk_encryption_enabled
    ?double_encryption_enabled ?engine ?language_extensions
    ?outbound_network_access_restricted ?public_ip_type
    ?public_network_access_enabled ?purge_enabled
    ?streaming_ingestion_enabled ?tags ?zones ?timeouts ~location
    ~name ~resource_group_name ~identity ~optimized_auto_scale ~sku
    ~virtual_network_configuration __resource_id =
  let __resource_type = "azurerm_kusto_cluster" in
  let __resource =
    {
      allowed_fqdns;
      allowed_ip_ranges;
      auto_stop_enabled;
      disk_encryption_enabled;
      double_encryption_enabled;
      engine;
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
      zones;
      identity;
      optimized_auto_scale;
      sku;
      timeouts;
      virtual_network_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cluster __resource);
  ()
