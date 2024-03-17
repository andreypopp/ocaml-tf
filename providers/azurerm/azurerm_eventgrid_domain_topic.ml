(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventgrid_domain_topic__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain_topic__timeouts *)

type azurerm_eventgrid_domain_topic = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_eventgrid_domain_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain_topic *)

type t = {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_eventgrid_domain_topic ?id ?timeouts ~domain_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_eventgrid_domain_topic" in
  let __resource =
    ({ domain_name; id; name; resource_group_name; timeouts }
      : azurerm_eventgrid_domain_topic)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_domain_topic __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
