(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_analytics_item__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_analytics_item__timeouts *)

type azurerm_application_insights_analytics_item = {
  application_insights_id : string;  (** application_insights_id *)
  content : string;  (** content *)
  function_alias : string option; [@option]  (** function_alias *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  scope : string;  (** scope *)
  type_ : string; [@key "type"]  (** type *)
  timeouts :
    azurerm_application_insights_analytics_item__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_analytics_item *)

let azurerm_application_insights_analytics_item ?function_alias ?id
    ?timeouts ~application_insights_id ~content ~name ~scope ~type_
    __resource_id =
  let __resource_type =
    "azurerm_application_insights_analytics_item"
  in
  let __resource =
    {
      application_insights_id;
      content;
      function_alias;
      id;
      name;
      scope;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_analytics_item __resource);
  ()
