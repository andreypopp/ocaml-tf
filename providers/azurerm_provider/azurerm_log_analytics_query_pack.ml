(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_query_pack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack__timeouts *)

type azurerm_log_analytics_query_pack = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_log_analytics_query_pack__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack *)

let azurerm_log_analytics_query_pack ?id ?tags ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_log_analytics_query_pack" in
  let __resource =
    { id; location; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_query_pack __resource);
  ()
