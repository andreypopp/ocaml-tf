(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventgrid_domain_topic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain_topic__timeouts *)

type azurerm_eventgrid_domain_topic = {
  domain_name : string;  (** domain_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_eventgrid_domain_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain_topic *)

let azurerm_eventgrid_domain_topic ?timeouts ~domain_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_eventgrid_domain_topic" in
  let __resource =
    { domain_name; name; resource_group_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_domain_topic __resource);
  ()
