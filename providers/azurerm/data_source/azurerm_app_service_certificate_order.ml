(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type certificates = {
  certificate_name : string prop;
  key_vault_id : string prop;
  key_vault_secret_name : string prop;
  provisioning_state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificates) -> ()

let yojson_of_certificates =
  (function
   | {
       certificate_name = v_certificate_name;
       key_vault_id = v_key_vault_id;
       key_vault_secret_name = v_key_vault_secret_name;
       provisioning_state = v_provisioning_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_provisioning_state
         in
         ("provisioning_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_secret_name
         in
         ("key_vault_secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_name
         in
         ("certificate_name", arg) :: bnds
       in
       `Assoc bnds
    : certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificates

[@@@deriving.end]

type azurerm_app_service_certificate_order = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_certificate_order) -> ()

let yojson_of_azurerm_app_service_certificate_order =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_app_service_certificate_order ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_certificate_order

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_app_service_certificate_order ?id ?timeouts ~name
    ~resource_group_name () : azurerm_app_service_certificate_order =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  app_service_certificate_not_renewable_reasons : string list prop;
  auto_renew : bool prop;
  certificates : certificates list prop;
  csr : string prop;
  distinguished_name : string prop;
  domain_verification_token : string prop;
  expiration_time : string prop;
  id : string prop;
  intermediate_thumbprint : string prop;
  is_private_key_external : bool prop;
  key_size : float prop;
  location : string prop;
  name : string prop;
  product_type : string prop;
  resource_group_name : string prop;
  root_thumbprint : string prop;
  signed_certificate_thumbprint : string prop;
  status : string prop;
  tags : (string * string) list prop;
  validity_in_years : float prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_app_service_certificate_order" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_certificate_not_renewable_reasons =
         Prop.computed __type __id
           "app_service_certificate_not_renewable_reasons";
       auto_renew = Prop.computed __type __id "auto_renew";
       certificates = Prop.computed __type __id "certificates";
       csr = Prop.computed __type __id "csr";
       distinguished_name =
         Prop.computed __type __id "distinguished_name";
       domain_verification_token =
         Prop.computed __type __id "domain_verification_token";
       expiration_time = Prop.computed __type __id "expiration_time";
       id = Prop.computed __type __id "id";
       intermediate_thumbprint =
         Prop.computed __type __id "intermediate_thumbprint";
       is_private_key_external =
         Prop.computed __type __id "is_private_key_external";
       key_size = Prop.computed __type __id "key_size";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       product_type = Prop.computed __type __id "product_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       root_thumbprint = Prop.computed __type __id "root_thumbprint";
       signed_certificate_thumbprint =
         Prop.computed __type __id "signed_certificate_thumbprint";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       validity_in_years =
         Prop.computed __type __id "validity_in_years";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_certificate_order
        (azurerm_app_service_certificate_order ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
