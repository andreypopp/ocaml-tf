(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_attestation_provider__policy = {
  data : string prop option; [@option]  (** data *)
  environment_type : string prop option; [@option]
      (** environment_type *)
}
[@@deriving yojson_of]
(** azurerm_attestation_provider__policy *)

type azurerm_attestation_provider__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_attestation_provider__timeouts *)

type azurerm_attestation_provider = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  open_enclave_policy_base64 : string prop option; [@option]
      (** open_enclave_policy_base64 *)
  policy_signing_certificate_data : string prop option; [@option]
      (** policy_signing_certificate_data *)
  resource_group_name : string prop;  (** resource_group_name *)
  sev_snp_policy_base64 : string prop option; [@option]
      (** sev_snp_policy_base64 *)
  sgx_enclave_policy_base64 : string prop option; [@option]
      (** sgx_enclave_policy_base64 *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tpm_policy_base64 : string prop option; [@option]
      (** tpm_policy_base64 *)
  policy : azurerm_attestation_provider__policy list;
  timeouts : azurerm_attestation_provider__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_attestation_provider *)

let azurerm_attestation_provider ?id ?open_enclave_policy_base64
    ?policy_signing_certificate_data ?sev_snp_policy_base64
    ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64 ?timeouts
    ~location ~name ~resource_group_name ~policy __resource_id =
  let __resource_type = "azurerm_attestation_provider" in
  let __resource =
    {
      id;
      location;
      name;
      open_enclave_policy_base64;
      policy_signing_certificate_data;
      resource_group_name;
      sev_snp_policy_base64;
      sgx_enclave_policy_base64;
      tags;
      tpm_policy_base64;
      policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_attestation_provider __resource);
  ()
