(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy

val policy :
  ?data:string prop ->
  ?environment_type:string prop ->
  unit ->
  policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_attestation_provider

val azurerm_attestation_provider :
  ?id:string prop ->
  ?open_enclave_policy_base64:string prop ->
  ?policy_signing_certificate_data:string prop ->
  ?sev_snp_policy_base64:string prop ->
  ?sgx_enclave_policy_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?tpm_policy_base64:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy:policy list ->
  unit ->
  azurerm_attestation_provider

val yojson_of_azurerm_attestation_provider :
  azurerm_attestation_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attestation_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  open_enclave_policy_base64 : string prop;
  policy_signing_certificate_data : string prop;
  resource_group_name : string prop;
  sev_snp_policy_base64 : string prop;
  sgx_enclave_policy_base64 : string prop;
  tags : (string * string) list prop;
  tpm_policy_base64 : string prop;
  trust_model : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?open_enclave_policy_base64:string prop ->
  ?policy_signing_certificate_data:string prop ->
  ?sev_snp_policy_base64:string prop ->
  ?sgx_enclave_policy_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?tpm_policy_base64:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy:policy list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?open_enclave_policy_base64:string prop ->
  ?policy_signing_certificate_data:string prop ->
  ?sev_snp_policy_base64:string prop ->
  ?sgx_enclave_policy_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?tpm_policy_base64:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy:policy list ->
  string ->
  t Tf_core.resource
