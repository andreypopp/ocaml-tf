(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_healthcare_service__authentication_configuration = {
  audience : string prop option; [@option]  (** audience *)
  authority : string prop option; [@option]  (** authority *)
  smart_proxy_enabled : bool prop option; [@option]
      (** smart_proxy_enabled *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_service__authentication_configuration *)

type azurerm_healthcare_service__cors_configuration = {
  allow_credentials : bool prop option; [@option]
      (** allow_credentials *)
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list option; [@option]
      (** allowed_methods *)
  allowed_origins : string prop list option; [@option]
      (** allowed_origins *)
  max_age_in_seconds : float prop option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_service__cors_configuration *)

type azurerm_healthcare_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_service__timeouts *)

type azurerm_healthcare_service = {
  access_policy_object_ids : string prop list option; [@option]
      (** access_policy_object_ids *)
  cosmosdb_key_vault_key_versionless_id : string prop option;
      [@option]
      (** cosmosdb_key_vault_key_versionless_id *)
  cosmosdb_throughput : float prop option; [@option]
      (** cosmosdb_throughput *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  authentication_configuration :
    azurerm_healthcare_service__authentication_configuration list;
  cors_configuration :
    azurerm_healthcare_service__cors_configuration list;
  timeouts : azurerm_healthcare_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_service *)

let azurerm_healthcare_service ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration __resource_id =
  let __resource_type = "azurerm_healthcare_service" in
  let __resource =
    {
      access_policy_object_ids;
      cosmosdb_key_vault_key_versionless_id;
      cosmosdb_throughput;
      id;
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
