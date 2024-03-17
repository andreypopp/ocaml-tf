(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_configuration_feature__targeting_filter__groups = {
  name : string;  (** name *)
  rollout_percentage : float;  (** rollout_percentage *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__targeting_filter__groups *)

type azurerm_app_configuration_feature__targeting_filter = {
  default_rollout_percentage : float;
      (** default_rollout_percentage *)
  users : string list option; [@option]  (** users *)
  groups :
    azurerm_app_configuration_feature__targeting_filter__groups list;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__targeting_filter *)

type azurerm_app_configuration_feature__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__timeouts *)

type azurerm_app_configuration_feature__timewindow_filter = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__timewindow_filter *)

type azurerm_app_configuration_feature = {
  configuration_store_id : string;  (** configuration_store_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  label : string option; [@option]  (** label *)
  locked : bool option; [@option]  (** locked *)
  name : string;  (** name *)
  percentage_filter_value : float option; [@option]
      (** percentage_filter_value *)
  tags : (string * string) list option; [@option]  (** tags *)
  targeting_filter :
    azurerm_app_configuration_feature__targeting_filter list;
  timeouts : azurerm_app_configuration_feature__timeouts option;
  timewindow_filter :
    azurerm_app_configuration_feature__timewindow_filter list;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature *)

let azurerm_app_configuration_feature ?description ?enabled ?label
    ?locked ?percentage_filter_value ?tags ?timeouts
    ~configuration_store_id ~name ~targeting_filter
    ~timewindow_filter __resource_id =
  let __resource_type = "azurerm_app_configuration_feature" in
  let __resource =
    {
      configuration_store_id;
      description;
      enabled;
      label;
      locked;
      name;
      percentage_filter_value;
      tags;
      targeting_filter;
      timeouts;
      timewindow_filter;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_configuration_feature __resource);
  ()
