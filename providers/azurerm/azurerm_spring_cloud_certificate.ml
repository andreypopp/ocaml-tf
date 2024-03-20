(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_certificate = {
  certificate_content : string prop option; [@option]
      (** certificate_content *)
  exclude_private_key : bool prop option; [@option]
      (** exclude_private_key *)
  id : string prop option; [@option]  (** id *)
  key_vault_certificate_id : string prop option; [@option]
      (** key_vault_certificate_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_name : string prop;  (** service_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_certificate *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_spring_cloud_certificate ?certificate_content
    ?exclude_private_key ?id ?key_vault_certificate_id ?timeouts
    ~name ~resource_group_name ~service_name () :
    azurerm_spring_cloud_certificate =
  {
    certificate_content;
    exclude_private_key;
    id;
    key_vault_certificate_id;
    name;
    resource_group_name;
    service_name;
    timeouts;
  }

type t = {
  certificate_content : string prop;
  exclude_private_key : bool prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  thumbprint : string prop;
}

let make ?certificate_content ?exclude_private_key ?id
    ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
    ~service_name __id =
  let __type = "azurerm_spring_cloud_certificate" in
  let __attrs =
    ({
       certificate_content =
         Prop.computed __type __id "certificate_content";
       exclude_private_key =
         Prop.computed __type __id "exclude_private_key";
       id = Prop.computed __type __id "id";
       key_vault_certificate_id =
         Prop.computed __type __id "key_vault_certificate_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_name = Prop.computed __type __id "service_name";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_certificate
        (azurerm_spring_cloud_certificate ?certificate_content
           ?exclude_private_key ?id ?key_vault_certificate_id
           ?timeouts ~name ~resource_group_name ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_content ?exclude_private_key ?id
    ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
    ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_content ?exclude_private_key ?id
      ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
      ~service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
