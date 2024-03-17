(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet_service_endpoint_storage_policy__definition = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  service : string prop option; [@option]  (** service *)
  service_resources : string prop list;  (** service_resources *)
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy__definition *)

type azurerm_subnet_service_endpoint_storage_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy__timeouts *)

type azurerm_subnet_service_endpoint_storage_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  definition :
    azurerm_subnet_service_endpoint_storage_policy__definition list;
  timeouts :
    azurerm_subnet_service_endpoint_storage_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy *)

let azurerm_subnet_service_endpoint_storage_policy ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~definition
    __resource_id =
  let __resource_type =
    "azurerm_subnet_service_endpoint_storage_policy"
  in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      tags;
      definition;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_service_endpoint_storage_policy
       __resource);
  ()
