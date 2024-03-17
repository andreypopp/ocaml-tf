(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_attestation_provider__policy
type azurerm_attestation_provider__timeouts
type azurerm_attestation_provider

val azurerm_attestation_provider :
  ?id:string prop ->
  ?open_enclave_policy_base64:string prop ->
  ?policy_signing_certificate_data:string prop ->
  ?sev_snp_policy_base64:string prop ->
  ?sgx_enclave_policy_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?tpm_policy_base64:string prop ->
  ?timeouts:azurerm_attestation_provider__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy:azurerm_attestation_provider__policy list ->
  string ->
  unit
