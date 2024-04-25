(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy = {
  data : string prop option; [@option]
  environment_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy) -> ()

let yojson_of_policy =
  (function
   | { data = v_data; environment_type = v_environment_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_environment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_attestation_provider = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  open_enclave_policy_base64 : string prop option; [@option]
  policy_signing_certificate_data : string prop option; [@option]
  resource_group_name : string prop;
  sev_snp_policy_base64 : string prop option; [@option]
  sgx_enclave_policy_base64 : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tpm_policy_base64 : string prop option; [@option]
  policy : policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_attestation_provider) -> ()

let yojson_of_azurerm_attestation_provider =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       open_enclave_policy_base64 = v_open_enclave_policy_base64;
       policy_signing_certificate_data =
         v_policy_signing_certificate_data;
       resource_group_name = v_resource_group_name;
       sev_snp_policy_base64 = v_sev_snp_policy_base64;
       sgx_enclave_policy_base64 = v_sgx_enclave_policy_base64;
       tags = v_tags;
       tpm_policy_base64 = v_tpm_policy_base64;
       policy = v_policy;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_policy v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         match v_tpm_policy_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpm_policy_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sgx_enclave_policy_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sgx_enclave_policy_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sev_snp_policy_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sev_snp_policy_base64", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_policy_signing_certificate_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_signing_certificate_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_open_enclave_policy_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "open_enclave_policy_base64", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_attestation_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_attestation_provider

[@@@deriving.end]

let policy ?data ?environment_type () : policy =
  { data; environment_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_attestation_provider ?id ?open_enclave_policy_base64
    ?policy_signing_certificate_data ?sev_snp_policy_base64
    ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64
    ?(policy = []) ?timeouts ~location ~name ~resource_group_name ()
    : azurerm_attestation_provider =
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

let make ?id ?open_enclave_policy_base64
    ?policy_signing_certificate_data ?sev_snp_policy_base64
    ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64
    ?(policy = []) ?timeouts ~location ~name ~resource_group_name
    __id =
  let __type = "azurerm_attestation_provider" in
  let __attrs =
    ({
       attestation_uri = Prop.computed __type __id "attestation_uri";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       open_enclave_policy_base64 =
         Prop.computed __type __id "open_enclave_policy_base64";
       policy_signing_certificate_data =
         Prop.computed __type __id "policy_signing_certificate_data";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sev_snp_policy_base64 =
         Prop.computed __type __id "sev_snp_policy_base64";
       sgx_enclave_policy_base64 =
         Prop.computed __type __id "sgx_enclave_policy_base64";
       tags = Prop.computed __type __id "tags";
       tpm_policy_base64 =
         Prop.computed __type __id "tpm_policy_base64";
       trust_model = Prop.computed __type __id "trust_model";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_attestation_provider
        (azurerm_attestation_provider ?id ?open_enclave_policy_base64
           ?policy_signing_certificate_data ?sev_snp_policy_base64
           ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64
           ~policy ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?open_enclave_policy_base64
    ?policy_signing_certificate_data ?sev_snp_policy_base64
    ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64
    ?(policy = []) ?timeouts ~location ~name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?open_enclave_policy_base64
      ?policy_signing_certificate_data ?sev_snp_policy_base64
      ?sgx_enclave_policy_base64 ?tags ?tpm_policy_base64 ~policy
      ?timeouts ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
