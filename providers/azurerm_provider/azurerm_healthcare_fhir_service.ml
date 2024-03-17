(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_healthcare_fhir_service__authentication = {
  audience : string;  (** audience *)
  authority : string;  (** authority *)
  smart_proxy_enabled : bool option; [@option]
      (** smart_proxy_enabled *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__authentication *)

type azurerm_healthcare_fhir_service__cors = {
  allowed_headers : string list;  (** allowed_headers *)
  allowed_methods : string list;  (** allowed_methods *)
  allowed_origins : string list;  (** allowed_origins *)
  credentials_allowed : bool option; [@option]
      (** credentials_allowed *)
  max_age_in_seconds : float option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__cors *)

type azurerm_healthcare_fhir_service__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__identity *)

type azurerm_healthcare_fhir_service__oci_artifact = {
  digest : string option; [@option]  (** digest *)
  image_name : string option; [@option]  (** image_name *)
  login_server : string;  (** login_server *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__oci_artifact *)

type azurerm_healthcare_fhir_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__timeouts *)

type azurerm_healthcare_fhir_service = {
  access_policy_object_ids : string list option; [@option]
      (** access_policy_object_ids *)
  configuration_export_storage_account_name : string option;
      [@option]
      (** configuration_export_storage_account_name *)
  container_registry_login_server_url : string list option; [@option]
      (** container_registry_login_server_url *)
  kind : string option; [@option]  (** kind *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  workspace_id : string;  (** workspace_id *)
  authentication :
    azurerm_healthcare_fhir_service__authentication list;
  cors : azurerm_healthcare_fhir_service__cors list;
  identity : azurerm_healthcare_fhir_service__identity list;
  oci_artifact : azurerm_healthcare_fhir_service__oci_artifact list;
  timeouts : azurerm_healthcare_fhir_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service *)

let azurerm_healthcare_fhir_service ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?kind ?tags ?timeouts
    ~location ~name ~resource_group_name ~workspace_id
    ~authentication ~cors ~identity ~oci_artifact __resource_id =
  let __resource_type = "azurerm_healthcare_fhir_service" in
  let __resource =
    {
      access_policy_object_ids;
      configuration_export_storage_account_name;
      container_registry_login_server_url;
      kind;
      location;
      name;
      resource_group_name;
      tags;
      workspace_id;
      authentication;
      cors;
      identity;
      oci_artifact;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_fhir_service __resource);
  ()
