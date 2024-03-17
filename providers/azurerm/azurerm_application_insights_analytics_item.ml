(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_analytics_item__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_analytics_item__timeouts *)

type azurerm_application_insights_analytics_item = {
  application_insights_id : string prop;
      (** application_insights_id *)
  content : string prop;  (** content *)
  function_alias : string prop option; [@option]
      (** function_alias *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts :
    azurerm_application_insights_analytics_item__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_analytics_item *)

type t = {
  application_insights_id : string prop;
  content : string prop;
  function_alias : string prop;
  id : string prop;
  name : string prop;
  scope : string prop;
  time_created : string prop;
  time_modified : string prop;
  type_ : string prop;
  version : string prop;
}

let azurerm_application_insights_analytics_item ?function_alias ?id
    ?timeouts ~application_insights_id ~content ~name ~scope ~type_
    __resource_id =
  let __resource_type =
    "azurerm_application_insights_analytics_item"
  in
  let __resource =
    ({
       application_insights_id;
       content;
       function_alias;
       id;
       name;
       scope;
       type_;
       timeouts;
     }
      : azurerm_application_insights_analytics_item)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_analytics_item __resource);
  let __resource_attributes =
    ({
       application_insights_id =
         Prop.computed __resource_type __resource_id
           "application_insights_id";
       content =
         Prop.computed __resource_type __resource_id "content";
       function_alias =
         Prop.computed __resource_type __resource_id "function_alias";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       scope = Prop.computed __resource_type __resource_id "scope";
       time_created =
         Prop.computed __resource_type __resource_id "time_created";
       time_modified =
         Prop.computed __resource_type __resource_id "time_modified";
       type_ = Prop.computed __resource_type __resource_id "type";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
