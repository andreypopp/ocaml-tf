(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_datadog_monitor__datadog_organization = {
  api_key : string prop;  (** api_key *)
  application_key : string prop;  (** application_key *)
  enterprise_app_id : string prop option; [@option]
      (** enterprise_app_id *)
  id : string prop;  (** id *)
  linking_auth_code : string prop option; [@option]
      (** linking_auth_code *)
  linking_client_id : string prop option; [@option]
      (** linking_client_id *)
  name : string prop;  (** name *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__datadog_organization *)

type azurerm_datadog_monitor__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__identity *)

type azurerm_datadog_monitor__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__timeouts *)

type azurerm_datadog_monitor__user = {
  email : string prop;  (** email *)
  name : string prop;  (** name *)
  phone_number : string prop option; [@option]  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__user *)

type azurerm_datadog_monitor = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  monitoring_enabled : bool prop option; [@option]
      (** monitoring_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  datadog_organization :
    azurerm_datadog_monitor__datadog_organization list;
  identity : azurerm_datadog_monitor__identity list;
  timeouts : azurerm_datadog_monitor__timeouts option;
  user : azurerm_datadog_monitor__user list;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor *)

let azurerm_datadog_monitor ?id ?monitoring_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~datadog_organization ~identity ~user __resource_id =
  let __resource_type = "azurerm_datadog_monitor" in
  let __resource =
    {
      id;
      location;
      monitoring_enabled;
      name;
      resource_group_name;
      sku_name;
      tags;
      datadog_organization;
      identity;
      timeouts;
      user;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_datadog_monitor __resource);
  ()
