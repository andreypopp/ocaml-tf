(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_log_analytics_query_pack_query__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack_query__timeouts *)

type azurerm_log_analytics_query_pack_query = {
  additional_settings_json : string option; [@option]
      (** additional_settings_json *)
  body : string;  (** body *)
  categories : string list option; [@option]  (** categories *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  query_pack_id : string;  (** query_pack_id *)
  resource_types : string list option; [@option]
      (** resource_types *)
  solutions : string list option; [@option]  (** solutions *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_log_analytics_query_pack_query__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack_query *)

let azurerm_log_analytics_query_pack_query ?additional_settings_json
    ?categories ?description ?resource_types ?solutions ?tags
    ?timeouts ~body ~display_name ~query_pack_id __resource_id =
  let __resource_type = "azurerm_log_analytics_query_pack_query" in
  let __resource =
    {
      additional_settings_json;
      body;
      categories;
      description;
      display_name;
      query_pack_id;
      resource_types;
      solutions;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_query_pack_query __resource);
  ()
