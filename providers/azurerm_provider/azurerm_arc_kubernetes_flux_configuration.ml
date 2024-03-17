(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_arc_kubernetes_flux_configuration__blob_storage__service_principal = {
  client_certificate_base64 : string option; [@option]
      (** client_certificate_base64 *)
  client_certificate_password : string option; [@option]
      (** client_certificate_password *)
  client_certificate_send_chain : bool option; [@option]
      (** client_certificate_send_chain *)
  client_id : string;  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration__blob_storage__service_principal *)

type azurerm_arc_kubernetes_flux_configuration__blob_storage = {
  account_key : string option; [@option]  (** account_key *)
  container_id : string;  (** container_id *)
  local_auth_reference : string option; [@option]
      (** local_auth_reference *)
  sas_token : string option; [@option]  (** sas_token *)
  sync_interval_in_seconds : float option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  service_principal :
    azurerm_arc_kubernetes_flux_configuration__blob_storage__service_principal
    list;
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration__blob_storage *)

type azurerm_arc_kubernetes_flux_configuration__bucket = {
  access_key : string option; [@option]  (** access_key *)
  bucket_name : string;  (** bucket_name *)
  local_auth_reference : string option; [@option]
      (** local_auth_reference *)
  secret_key_base64 : string option; [@option]
      (** secret_key_base64 *)
  sync_interval_in_seconds : float option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  tls_enabled : bool option; [@option]  (** tls_enabled *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration__bucket *)

type azurerm_arc_kubernetes_flux_configuration__git_repository = {
  https_ca_cert_base64 : string option; [@option]
      (** https_ca_cert_base64 *)
  https_key_base64 : string option; [@option]
      (** https_key_base64 *)
  https_user : string option; [@option]  (** https_user *)
  local_auth_reference : string option; [@option]
      (** local_auth_reference *)
  reference_type : string;  (** reference_type *)
  reference_value : string;  (** reference_value *)
  ssh_known_hosts_base64 : string option; [@option]
      (** ssh_known_hosts_base64 *)
  ssh_private_key_base64 : string option; [@option]
      (** ssh_private_key_base64 *)
  sync_interval_in_seconds : float option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration__git_repository *)

type azurerm_arc_kubernetes_flux_configuration__kustomizations = {
  depends_on : string list option; [@option]  (** depends_on *)
  garbage_collection_enabled : bool option; [@option]
      (** garbage_collection_enabled *)
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
  recreating_enabled : bool option; [@option]
      (** recreating_enabled *)
  retry_interval_in_seconds : float option; [@option]
      (** retry_interval_in_seconds *)
  sync_interval_in_seconds : float option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration__kustomizations *)

type azurerm_arc_kubernetes_flux_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration__timeouts *)

type azurerm_arc_kubernetes_flux_configuration = {
  cluster_id : string;  (** cluster_id *)
  continuous_reconciliation_enabled : bool option; [@option]
      (** continuous_reconciliation_enabled *)
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  scope : string option; [@option]  (** scope *)
  blob_storage :
    azurerm_arc_kubernetes_flux_configuration__blob_storage list;
  bucket : azurerm_arc_kubernetes_flux_configuration__bucket list;
  git_repository :
    azurerm_arc_kubernetes_flux_configuration__git_repository list;
  kustomizations :
    azurerm_arc_kubernetes_flux_configuration__kustomizations list;
  timeouts :
    azurerm_arc_kubernetes_flux_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_flux_configuration *)

let azurerm_arc_kubernetes_flux_configuration
    ?continuous_reconciliation_enabled ?scope ?timeouts ~cluster_id
    ~name ~namespace ~blob_storage ~bucket ~git_repository
    ~kustomizations __resource_id =
  let __resource_type =
    "azurerm_arc_kubernetes_flux_configuration"
  in
  let __resource =
    {
      cluster_id;
      continuous_reconciliation_enabled;
      name;
      namespace;
      scope;
      blob_storage;
      bucket;
      git_repository;
      kustomizations;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_kubernetes_flux_configuration __resource);
  ()
