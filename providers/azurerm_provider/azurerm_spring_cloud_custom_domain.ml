(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_custom_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_custom_domain__timeouts *)

type azurerm_spring_cloud_custom_domain = {
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts : azurerm_spring_cloud_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_custom_domain *)

let azurerm_spring_cloud_custom_domain ?certificate_name ?id
    ?thumbprint ?timeouts ~name ~spring_cloud_app_id __resource_id =
  let __resource_type = "azurerm_spring_cloud_custom_domain" in
  let __resource =
    {
      certificate_name;
      id;
      name;
      spring_cloud_app_id;
      thumbprint;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_custom_domain __resource);
  ()
