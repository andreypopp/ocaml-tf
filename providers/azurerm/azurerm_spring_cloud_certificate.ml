(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?certificate_content ?exclude_private_key ?id
    ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
    ~service_name __resource_id =
  let __resource_type = "azurerm_spring_cloud_certificate" in
  let __resource =
    azurerm_spring_cloud_certificate ?certificate_content
      ?exclude_private_key ?id ?key_vault_certificate_id ?timeouts
      ~name ~resource_group_name ~service_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_certificate __resource);
  let __resource_attributes =
    ({
       certificate_content =
         Prop.computed __resource_type __resource_id
           "certificate_content";
       exclude_private_key =
         Prop.computed __resource_type __resource_id
           "exclude_private_key";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_certificate_id =
         Prop.computed __resource_type __resource_id
           "key_vault_certificate_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes
