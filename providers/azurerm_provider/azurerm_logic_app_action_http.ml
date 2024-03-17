(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_action_http__run_after = {
  action_name : string;  (** action_name *)
  action_result : string;  (** action_result *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_action_http__run_after *)

type azurerm_logic_app_action_http__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_action_http__timeouts *)

type azurerm_logic_app_action_http = {
  body : string option; [@option]  (** body *)
  headers : (string * string) list option; [@option]  (** headers *)
  logic_app_id : string;  (** logic_app_id *)
  method_ : string; [@key "method"]  (** method *)
  name : string;  (** name *)
  queries : (string * string) list option; [@option]  (** queries *)
  uri : string;  (** uri *)
  run_after : azurerm_logic_app_action_http__run_after list;
  timeouts : azurerm_logic_app_action_http__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_action_http *)

let azurerm_logic_app_action_http ?body ?headers ?queries ?timeouts
    ~logic_app_id ~method_ ~name ~uri ~run_after __resource_id =
  let __resource_type = "azurerm_logic_app_action_http" in
  let __resource =
    {
      body;
      headers;
      logic_app_id;
      method_;
      name;
      queries;
      uri;
      run_after;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_action_http __resource);
  ()
