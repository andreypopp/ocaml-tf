(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_function_app_function__file = {
  content : string;  (** The content of the file. *)
  name : string;  (** The filename of the file to be uploaded. *)
}
[@@deriving yojson_of]
(** azurerm_function_app_function__file *)

type azurerm_function_app_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_function_app_function__timeouts *)

type azurerm_function_app_function = {
  config_json : string;
      (** The config for this Function in JSON format. *)
  enabled : bool option; [@option]
      (** Should this function be enabled. Defaults to `true`. *)
  function_app_id : string;
      (** The ID of the Function App in which this function should reside. *)
  id : string option; [@option]  (** id *)
  language : string option; [@option]
      (** The language the Function is written in. *)
  name : string;  (** The name of the function. *)
  test_data : string option; [@option]
      (** The test data for the function. *)
  file : azurerm_function_app_function__file list;
  timeouts : azurerm_function_app_function__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_function *)

let azurerm_function_app_function ?enabled ?id ?language ?test_data
    ?timeouts ~config_json ~function_app_id ~name ~file __resource_id
    =
  let __resource_type = "azurerm_function_app_function" in
  let __resource =
    {
      config_json;
      enabled;
      function_app_id;
      id;
      language;
      name;
      test_data;
      file;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_function_app_function __resource);
  ()
