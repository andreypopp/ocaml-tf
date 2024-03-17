(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_healthcare_fhir_service__authentication = {
  audience : string prop;  (** audience *)
  authority : string prop;  (** authority *)
  smart_proxy_enabled : bool prop option; [@option]
      (** smart_proxy_enabled *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__authentication *)

type azurerm_healthcare_fhir_service__cors = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  credentials_allowed : bool prop option; [@option]
      (** credentials_allowed *)
  max_age_in_seconds : float prop option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__cors *)

type azurerm_healthcare_fhir_service__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__identity *)

type azurerm_healthcare_fhir_service__oci_artifact = {
  digest : string prop option; [@option]  (** digest *)
  image_name : string prop option; [@option]  (** image_name *)
  login_server : string prop;  (** login_server *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__oci_artifact *)

type azurerm_healthcare_fhir_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service__timeouts *)

type azurerm_healthcare_fhir_service = {
  access_policy_object_ids : string prop list option; [@option]
      (** access_policy_object_ids *)
  configuration_export_storage_account_name : string prop option;
      [@option]
      (** configuration_export_storage_account_name *)
  container_registry_login_server_url : string prop list option;
      [@option]
      (** container_registry_login_server_url *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop;  (** workspace_id *)
  authentication :
    azurerm_healthcare_fhir_service__authentication list;
  cors : azurerm_healthcare_fhir_service__cors list;
  identity : azurerm_healthcare_fhir_service__identity list;
  oci_artifact : azurerm_healthcare_fhir_service__oci_artifact list;
  timeouts : azurerm_healthcare_fhir_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service *)

type t = {
  access_policy_object_ids : string list prop;
  configuration_export_storage_account_name : string prop;
  container_registry_login_server_url : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let azurerm_healthcare_fhir_service ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?timeouts
    ~location ~name ~resource_group_name ~workspace_id
    ~authentication ~cors ~identity ~oci_artifact __resource_id =
  let __resource_type = "azurerm_healthcare_fhir_service" in
  let __resource =
    ({
       access_policy_object_ids;
       configuration_export_storage_account_name;
       container_registry_login_server_url;
       id;
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
      : azurerm_healthcare_fhir_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_fhir_service __resource);
  let __resource_attributes =
    ({
       access_policy_object_ids =
         Prop.computed __resource_type __resource_id
           "access_policy_object_ids";
       configuration_export_storage_account_name =
         Prop.computed __resource_type __resource_id
           "configuration_export_storage_account_name";
       container_registry_login_server_url =
         Prop.computed __resource_type __resource_id
           "container_registry_login_server_url";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
