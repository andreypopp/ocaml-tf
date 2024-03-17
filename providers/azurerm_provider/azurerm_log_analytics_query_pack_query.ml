(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_query_pack_query__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack_query__timeouts *)

type azurerm_log_analytics_query_pack_query = {
  additional_settings_json : string prop option; [@option]
      (** additional_settings_json *)
  body : string prop;  (** body *)
  categories : string prop list option; [@option]  (** categories *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  query_pack_id : string prop;  (** query_pack_id *)
  resource_types : string prop list option; [@option]
      (** resource_types *)
  solutions : string prop list option; [@option]  (** solutions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_log_analytics_query_pack_query__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack_query *)

let azurerm_log_analytics_query_pack_query ?additional_settings_json
    ?categories ?description ?id ?name ?resource_types ?solutions
    ?tags ?timeouts ~body ~display_name ~query_pack_id __resource_id
    =
  let __resource_type = "azurerm_log_analytics_query_pack_query" in
  let __resource =
    {
      additional_settings_json;
      body;
      categories;
      description;
      display_name;
      id;
      name;
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
