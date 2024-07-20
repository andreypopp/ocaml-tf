(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type features__api_management

val features__api_management :
  ?purge_soft_delete_on_destroy:bool prop ->
  ?recover_soft_deleted:bool prop ->
  unit ->
  features__api_management

type features__app_configuration

val features__app_configuration :
  ?purge_soft_delete_on_destroy:bool prop ->
  ?recover_soft_deleted:bool prop ->
  unit ->
  features__app_configuration

type features__application_insights

val features__application_insights :
  ?disable_generated_rule:bool prop ->
  unit ->
  features__application_insights

type features__cognitive_account

val features__cognitive_account :
  ?purge_soft_delete_on_destroy:bool prop ->
  unit ->
  features__cognitive_account

type features__key_vault

val features__key_vault :
  ?purge_soft_delete_on_destroy:bool prop ->
  ?purge_soft_deleted_certificates_on_destroy:bool prop ->
  ?purge_soft_deleted_hardware_security_module_keys_on_destroy:
    bool prop ->
  ?purge_soft_deleted_hardware_security_modules_on_destroy:bool prop ->
  ?purge_soft_deleted_keys_on_destroy:bool prop ->
  ?purge_soft_deleted_secrets_on_destroy:bool prop ->
  ?recover_soft_deleted_certificates:bool prop ->
  ?recover_soft_deleted_hardware_security_module_keys:bool prop ->
  ?recover_soft_deleted_key_vaults:bool prop ->
  ?recover_soft_deleted_keys:bool prop ->
  ?recover_soft_deleted_secrets:bool prop ->
  unit ->
  features__key_vault

type features__log_analytics_workspace

val features__log_analytics_workspace :
  ?permanently_delete_on_destroy:bool prop ->
  unit ->
  features__log_analytics_workspace

type features__machine_learning

val features__machine_learning :
  ?purge_soft_deleted_workspace_on_destroy:bool prop ->
  unit ->
  features__machine_learning

type features__managed_disk

val features__managed_disk :
  ?expand_without_downtime:bool prop ->
  unit ->
  features__managed_disk

type features__postgresql_flexible_server

val features__postgresql_flexible_server :
  ?restart_server_on_configuration_value_change:bool prop ->
  unit ->
  features__postgresql_flexible_server

type features__recovery_service

val features__recovery_service :
  ?purge_protected_items_from_vault_on_destroy:bool prop ->
  ?vm_backup_stop_protection_and_retain_data_on_destroy:bool prop ->
  unit ->
  features__recovery_service

type features__recovery_services_vaults

val features__recovery_services_vaults :
  ?recover_soft_deleted_backup_protected_vm:bool prop ->
  unit ->
  features__recovery_services_vaults

type features__resource_group

val features__resource_group :
  ?prevent_deletion_if_contains_resources:bool prop ->
  unit ->
  features__resource_group

type features__subscription

val features__subscription :
  ?prevent_cancellation_on_destroy:bool prop ->
  unit ->
  features__subscription

type features__template_deployment

val features__template_deployment :
  delete_nested_items_during_deletion:bool prop ->
  unit ->
  features__template_deployment

type features__virtual_machine

val features__virtual_machine :
  ?delete_os_disk_on_deletion:bool prop ->
  ?detach_implicit_data_disk_on_deletion:bool prop ->
  ?graceful_shutdown:bool prop ->
  ?skip_shutdown_and_force_delete:bool prop ->
  unit ->
  features__virtual_machine

type features__virtual_machine_scale_set

val features__virtual_machine_scale_set :
  ?force_delete:bool prop ->
  ?reimage_on_manual_upgrade:bool prop ->
  ?roll_instances_when_required:bool prop ->
  ?scale_to_zero_before_deletion:bool prop ->
  unit ->
  features__virtual_machine_scale_set

type features

val features :
  ?api_management:features__api_management list ->
  ?app_configuration:features__app_configuration list ->
  ?application_insights:features__application_insights list ->
  ?cognitive_account:features__cognitive_account list ->
  ?key_vault:features__key_vault list ->
  ?log_analytics_workspace:features__log_analytics_workspace list ->
  ?machine_learning:features__machine_learning list ->
  ?managed_disk:features__managed_disk list ->
  ?postgresql_flexible_server:
    features__postgresql_flexible_server list ->
  ?recovery_service:features__recovery_service list ->
  ?recovery_services_vaults:features__recovery_services_vaults list ->
  ?resource_group:features__resource_group list ->
  ?subscription:features__subscription list ->
  ?template_deployment:features__template_deployment list ->
  ?virtual_machine:features__virtual_machine list ->
  ?virtual_machine_scale_set:features__virtual_machine_scale_set list ->
  unit ->
  features

type azurerm

val azurerm :
  ?auxiliary_tenant_ids:string prop list ->
  ?client_certificate:string prop ->
  ?client_certificate_password:string prop ->
  ?client_certificate_path:string prop ->
  ?client_id:string prop ->
  ?client_id_file_path:string prop ->
  ?client_secret:string prop ->
  ?client_secret_file_path:string prop ->
  ?disable_correlation_request_id:bool prop ->
  ?disable_terraform_partner_id:bool prop ->
  ?environment:string prop ->
  ?metadata_host:string prop ->
  ?msi_endpoint:string prop ->
  ?oidc_request_token:string prop ->
  ?oidc_request_url:string prop ->
  ?oidc_token:string prop ->
  ?oidc_token_file_path:string prop ->
  ?partner_id:string prop ->
  ?skip_provider_registration:bool prop ->
  ?storage_use_azuread:bool prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?use_aks_workload_identity:bool prop ->
  ?use_cli:bool prop ->
  ?use_msi:bool prop ->
  ?use_oidc:bool prop ->
  features:features list ->
  unit ->
  azurerm

val yojson_of_azurerm : azurerm -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?auxiliary_tenant_ids:string prop list ->
  ?client_certificate:string prop ->
  ?client_certificate_password:string prop ->
  ?client_certificate_path:string prop ->
  ?client_id:string prop ->
  ?client_id_file_path:string prop ->
  ?client_secret:string prop ->
  ?client_secret_file_path:string prop ->
  ?disable_correlation_request_id:bool prop ->
  ?disable_terraform_partner_id:bool prop ->
  ?environment:string prop ->
  ?metadata_host:string prop ->
  ?msi_endpoint:string prop ->
  ?oidc_request_token:string prop ->
  ?oidc_request_url:string prop ->
  ?oidc_token:string prop ->
  ?oidc_token_file_path:string prop ->
  ?partner_id:string prop ->
  ?skip_provider_registration:bool prop ->
  ?storage_use_azuread:bool prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?use_aks_workload_identity:bool prop ->
  ?use_cli:bool prop ->
  ?use_msi:bool prop ->
  ?use_oidc:bool prop ->
  features:features list ->
  version:string ->
  unit ->
  unit

val make :
  ?auxiliary_tenant_ids:string prop list ->
  ?client_certificate:string prop ->
  ?client_certificate_password:string prop ->
  ?client_certificate_path:string prop ->
  ?client_id:string prop ->
  ?client_id_file_path:string prop ->
  ?client_secret:string prop ->
  ?client_secret_file_path:string prop ->
  ?disable_correlation_request_id:bool prop ->
  ?disable_terraform_partner_id:bool prop ->
  ?environment:string prop ->
  ?metadata_host:string prop ->
  ?msi_endpoint:string prop ->
  ?oidc_request_token:string prop ->
  ?oidc_request_url:string prop ->
  ?oidc_token:string prop ->
  ?oidc_token_file_path:string prop ->
  ?partner_id:string prop ->
  ?skip_provider_registration:bool prop ->
  ?storage_use_azuread:bool prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?use_aks_workload_identity:bool prop ->
  ?use_cli:bool prop ->
  ?use_msi:bool prop ->
  ?use_oidc:bool prop ->
  features:features list ->
  unit ->
  Tf_core.provider
