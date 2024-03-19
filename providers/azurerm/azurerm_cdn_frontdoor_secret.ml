(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type secret__customer_certificate = {
  key_vault_certificate_id : string prop;
      (** key_vault_certificate_id *)
}
[@@deriving yojson_of]
(** secret__customer_certificate *)

type secret = {
  customer_certificate : secret__customer_certificate list;
}
[@@deriving yojson_of]
(** secret *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_secret = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  secret : secret list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_secret *)

let secret__customer_certificate ~key_vault_certificate_id () :
    secret__customer_certificate =
  { key_vault_certificate_id }

let secret ~customer_certificate () : secret =
  { customer_certificate }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cdn_frontdoor_secret ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name ~secret () :
    azurerm_cdn_frontdoor_secret =
  { cdn_frontdoor_profile_id; id; name; secret; timeouts }

type t = {
  cdn_frontdoor_profile_id : string prop;
  cdn_frontdoor_profile_name : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    ~secret __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_secret" in
  let __resource =
    azurerm_cdn_frontdoor_secret ?id ?timeouts
      ~cdn_frontdoor_profile_id ~name ~secret ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_secret __resource);
  let __resource_attributes =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __resource_type __resource_id
           "cdn_frontdoor_profile_id";
       cdn_frontdoor_profile_name =
         Prop.computed __resource_type __resource_id
           "cdn_frontdoor_profile_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
