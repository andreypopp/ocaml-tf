(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_api_portal_custom_domain = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_api_portal_id : string prop;
      (** spring_cloud_api_portal_id *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal_custom_domain *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_api_portal_custom_domain ?id ?thumbprint
    ?timeouts ~name ~spring_cloud_api_portal_id () :
    azurerm_spring_cloud_api_portal_custom_domain =
  { id; name; spring_cloud_api_portal_id; thumbprint; timeouts }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_api_portal_id : string prop;
  thumbprint : string prop;
}

let register ?tf_module ?id ?thumbprint ?timeouts ~name
    ~spring_cloud_api_portal_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_api_portal_custom_domain"
  in
  let __resource =
    azurerm_spring_cloud_api_portal_custom_domain ?id ?thumbprint
      ?timeouts ~name ~spring_cloud_api_portal_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_api_portal_custom_domain
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_api_portal_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_api_portal_id";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes
