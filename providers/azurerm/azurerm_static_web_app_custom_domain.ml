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

type azurerm_static_web_app_custom_domain = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  static_web_app_id : string prop;  (** static_web_app_id *)
  validation_type : string prop;  (** validation_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_web_app_custom_domain *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_static_web_app_custom_domain ?id ?timeouts ~domain_name
    ~static_web_app_id ~validation_type () :
    azurerm_static_web_app_custom_domain =
  { domain_name; id; static_web_app_id; validation_type; timeouts }

type t = {
  domain_name : string prop;
  id : string prop;
  static_web_app_id : string prop;
  validation_token : string prop;
  validation_type : string prop;
}

let register ?tf_module ?id ?timeouts ~domain_name ~static_web_app_id
    ~validation_type __resource_id =
  let __resource_type = "azurerm_static_web_app_custom_domain" in
  let __resource =
    azurerm_static_web_app_custom_domain ?id ?timeouts ~domain_name
      ~static_web_app_id ~validation_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_static_web_app_custom_domain __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       static_web_app_id =
         Prop.computed __resource_type __resource_id
           "static_web_app_id";
       validation_token =
         Prop.computed __resource_type __resource_id
           "validation_token";
       validation_type =
         Prop.computed __resource_type __resource_id
           "validation_type";
     }
      : t)
  in
  __resource_attributes
