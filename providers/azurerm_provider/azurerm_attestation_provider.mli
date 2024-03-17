(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_attestation_provider__policy
type azurerm_attestation_provider__timeouts
type azurerm_attestation_provider

val azurerm_attestation_provider :
  ?id:string ->
  ?open_enclave_policy_base64:string ->
  ?policy_signing_certificate_data:string ->
  ?sev_snp_policy_base64:string ->
  ?sgx_enclave_policy_base64:string ->
  ?tags:(string * string) list ->
  ?tpm_policy_base64:string ->
  ?timeouts:azurerm_attestation_provider__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  policy:azurerm_attestation_provider__policy list ->
  string ->
  unit
