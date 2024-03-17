(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_function_app_function__file = {
  content : string prop;  (** The content of the file. *)
  name : string prop;  (** The filename of the file to be uploaded. *)
}
[@@deriving yojson_of]
(** azurerm_function_app_function__file *)

type azurerm_function_app_function__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_function_app_function__timeouts *)

type azurerm_function_app_function = {
  config_json : string prop;
      (** The config for this Function in JSON format. *)
  enabled : bool prop option; [@option]
      (** Should this function be enabled. Defaults to `true`. *)
  function_app_id : string prop;
      (** The ID of the Function App in which this function should reside. *)
  id : string prop option; [@option]  (** id *)
  language : string prop option; [@option]
      (** The language the Function is written in. *)
  name : string prop;  (** The name of the function. *)
  test_data : string prop option; [@option]
      (** The test data for the function. *)
  file : azurerm_function_app_function__file list;
  timeouts : azurerm_function_app_function__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_function *)

type t = {
  config_json : string prop;
  config_url : string prop;
  enabled : bool prop;
  function_app_id : string prop;
  id : string prop;
  invocation_url : string prop;
  language : string prop;
  name : string prop;
  script_root_path_url : string prop;
  script_url : string prop;
  secrets_file_url : string prop;
  test_data : string prop;
  test_data_url : string prop;
  url : string prop;
}

let azurerm_function_app_function ?enabled ?id ?language ?test_data
    ?timeouts ~config_json ~function_app_id ~name ~file __resource_id
    =
  let __resource_type = "azurerm_function_app_function" in
  let __resource =
    ({
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
      : azurerm_function_app_function)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_function_app_function __resource);
  let __resource_attributes =
    ({
       config_json =
         Prop.computed __resource_type __resource_id "config_json";
       config_url =
         Prop.computed __resource_type __resource_id "config_url";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       function_app_id =
         Prop.computed __resource_type __resource_id
           "function_app_id";
       id = Prop.computed __resource_type __resource_id "id";
       invocation_url =
         Prop.computed __resource_type __resource_id "invocation_url";
       language =
         Prop.computed __resource_type __resource_id "language";
       name = Prop.computed __resource_type __resource_id "name";
       script_root_path_url =
         Prop.computed __resource_type __resource_id
           "script_root_path_url";
       script_url =
         Prop.computed __resource_type __resource_id "script_url";
       secrets_file_url =
         Prop.computed __resource_type __resource_id
           "secrets_file_url";
       test_data =
         Prop.computed __resource_type __resource_id "test_data";
       test_data_url =
         Prop.computed __resource_type __resource_id "test_data_url";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
