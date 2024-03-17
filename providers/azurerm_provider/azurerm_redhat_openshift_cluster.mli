(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redhat_openshift_cluster__api_server_profile
type azurerm_redhat_openshift_cluster__cluster_profile
type azurerm_redhat_openshift_cluster__ingress_profile
type azurerm_redhat_openshift_cluster__main_profile
type azurerm_redhat_openshift_cluster__network_profile
type azurerm_redhat_openshift_cluster__service_principal
type azurerm_redhat_openshift_cluster__timeouts
type azurerm_redhat_openshift_cluster__worker_profile
type azurerm_redhat_openshift_cluster

val azurerm_redhat_openshift_cluster :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_redhat_openshift_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  api_server_profile:
    azurerm_redhat_openshift_cluster__api_server_profile list ->
  cluster_profile:
    azurerm_redhat_openshift_cluster__cluster_profile list ->
  ingress_profile:
    azurerm_redhat_openshift_cluster__ingress_profile list ->
  main_profile:azurerm_redhat_openshift_cluster__main_profile list ->
  network_profile:
    azurerm_redhat_openshift_cluster__network_profile list ->
  service_principal:
    azurerm_redhat_openshift_cluster__service_principal list ->
  worker_profile:
    azurerm_redhat_openshift_cluster__worker_profile list ->
  string ->
  unit
