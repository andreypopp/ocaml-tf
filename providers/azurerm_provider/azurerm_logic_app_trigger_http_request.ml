(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_trigger_http_request__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_http_request__timeouts *)

type azurerm_logic_app_trigger_http_request = {
  id : string option; [@option]  (** id *)
  logic_app_id : string;  (** logic_app_id *)
  method_ : string option; [@option] [@key "method"]  (** method *)
  name : string;  (** name *)
  relative_path : string option; [@option]  (** relative_path *)
  schema : string;  (** schema *)
  timeouts : azurerm_logic_app_trigger_http_request__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_http_request *)

let azurerm_logic_app_trigger_http_request ?id ?method_
    ?relative_path ?timeouts ~logic_app_id ~name ~schema
    __resource_id =
  let __resource_type = "azurerm_logic_app_trigger_http_request" in
  let __resource =
    {
      id;
      logic_app_id;
      method_;
      name;
      relative_path;
      schema;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_trigger_http_request __resource);
  ()
