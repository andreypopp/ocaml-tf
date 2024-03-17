(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_healthcare_service__authentication_configuration = {
  audience : string option; [@option]  (** audience *)
  authority : string option; [@option]  (** authority *)
  smart_proxy_enabled : bool option; [@option]
      (** smart_proxy_enabled *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_service__authentication_configuration *)

type azurerm_healthcare_service__cors_configuration = {
  allow_credentials : bool option; [@option]
      (** allow_credentials *)
  allowed_headers : string list option; [@option]
      (** allowed_headers *)
  allowed_methods : string list option; [@option]
      (** allowed_methods *)
  allowed_origins : string list option; [@option]
      (** allowed_origins *)
  max_age_in_seconds : float option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_service__cors_configuration *)

type azurerm_healthcare_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_service__timeouts *)

type azurerm_healthcare_service = {
  access_policy_object_ids : string list option; [@option]
      (** access_policy_object_ids *)
  cosmosdb_key_vault_key_versionless_id : string option; [@option]
      (** cosmosdb_key_vault_key_versionless_id *)
  cosmosdb_throughput : float option; [@option]
      (** cosmosdb_throughput *)
  kind : string option; [@option]  (** kind *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  authentication_configuration :
    azurerm_healthcare_service__authentication_configuration list;
  cors_configuration :
    azurerm_healthcare_service__cors_configuration list;
  timeouts : azurerm_healthcare_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_service *)

let azurerm_healthcare_service ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?kind
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~authentication_configuration
    ~cors_configuration __resource_id =
  let __resource_type = "azurerm_healthcare_service" in
  let __resource =
    {
      access_policy_object_ids;
      cosmosdb_key_vault_key_versionless_id;
      cosmosdb_throughput;
      kind;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      tags;
      authentication_configuration;
      cors_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_service __resource);
  ()
