(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type certificates = {
  certificate_name : string prop;  (** certificate_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_vault_secret_name : string prop;  (** key_vault_secret_name *)
  provisioning_state : string prop;  (** provisioning_state *)
}
[@@deriving yojson_of]

type azurerm_app_service_certificate_order = {
  auto_renew : bool prop option; [@option]  (** auto_renew *)
  csr : string prop option; [@option]  (** csr *)
  distinguished_name : string prop option; [@option]
      (** distinguished_name *)
  id : string prop option; [@option]  (** id *)
  key_size : float prop option; [@option]  (** key_size *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  product_type : string prop option; [@option]  (** product_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  validity_in_years : float prop option; [@option]
      (** validity_in_years *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_order *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_certificate_order ?auto_renew ?csr
    ?distinguished_name ?id ?key_size ?product_type ?tags
    ?validity_in_years ?timeouts ~location ~name ~resource_group_name
    () : azurerm_app_service_certificate_order =
  {
    auto_renew;
    csr;
    distinguished_name;
    id;
    key_size;
    location;
    name;
    product_type;
    resource_group_name;
    tags;
    validity_in_years;
    timeouts;
  }

type t = {
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

let make ?auto_renew ?csr ?distinguished_name ?id ?key_size
    ?product_type ?tags ?validity_in_years ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_app_service_certificate_order" in
  let __attrs =
    ({
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
        (azurerm_app_service_certificate_order ?auto_renew ?csr
           ?distinguished_name ?id ?key_size ?product_type ?tags
           ?validity_in_years ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_renew ?csr ?distinguished_name ?id
    ?key_size ?product_type ?tags ?validity_in_years ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_renew ?csr ?distinguished_name ?id ?key_size
      ?product_type ?tags ?validity_in_years ?timeouts ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
