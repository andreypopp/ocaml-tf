(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type policy = {
  data : string prop option; [@option]  (** data *)
  environment_type : string prop option; [@option]
      (** environment_type *)
}
[@@deriving yojson_of]
(** policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  policy : policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_attestation_provider *)

let policy ?data ?environment_type () : policy =
  { data; environment_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_attestation_provider ?id ?open_enclave_policy_base64
    ?policy_signing_certificate_data ?sev_snp_policy_base64
    ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64 ?timeouts
    ~location ~name ~resource_group_name ~policy () :
    azurerm_attestation_provider =
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

type t = {
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

let register ?tf_module ?id ?open_enclave_policy_base64
    ?policy_signing_certificate_data ?sev_snp_policy_base64
    ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64 ?timeouts
    ~location ~name ~resource_group_name ~policy __resource_id =
  let __resource_type = "azurerm_attestation_provider" in
  let __resource =
    azurerm_attestation_provider ?id ?open_enclave_policy_base64
      ?policy_signing_certificate_data ?sev_snp_policy_base64
      ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64 ?timeouts
      ~location ~name ~resource_group_name ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_attestation_provider __resource);
  let __resource_attributes =
    ({
       attestation_uri =
         Prop.computed __resource_type __resource_id
           "attestation_uri";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       open_enclave_policy_base64 =
         Prop.computed __resource_type __resource_id
           "open_enclave_policy_base64";
       policy_signing_certificate_data =
         Prop.computed __resource_type __resource_id
           "policy_signing_certificate_data";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sev_snp_policy_base64 =
         Prop.computed __resource_type __resource_id
           "sev_snp_policy_base64";
       sgx_enclave_policy_base64 =
         Prop.computed __resource_type __resource_id
           "sgx_enclave_policy_base64";
       tags = Prop.computed __resource_type __resource_id "tags";
       tpm_policy_base64 =
         Prop.computed __resource_type __resource_id
           "tpm_policy_base64";
       trust_model =
         Prop.computed __resource_type __resource_id "trust_model";
     }
      : t)
  in
  __resource_attributes
