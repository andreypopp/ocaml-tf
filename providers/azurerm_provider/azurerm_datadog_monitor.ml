(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_datadog_monitor__datadog_organization = {
  api_key : string;  (** api_key *)
  application_key : string;  (** application_key *)
  enterprise_app_id : string option; [@option]
      (** enterprise_app_id *)
  id : string;  (** id *)
  linking_auth_code : string option; [@option]
      (** linking_auth_code *)
  linking_client_id : string option; [@option]
      (** linking_client_id *)
  name : string;  (** name *)
  redirect_uri : string option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__datadog_organization *)

type azurerm_datadog_monitor__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__identity *)

type azurerm_datadog_monitor__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__timeouts *)

type azurerm_datadog_monitor__user = {
  email : string;  (** email *)
  name : string;  (** name *)
  phone_number : string option; [@option]  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor__user *)

type azurerm_datadog_monitor = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  monitoring_enabled : bool option; [@option]
      (** monitoring_enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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
