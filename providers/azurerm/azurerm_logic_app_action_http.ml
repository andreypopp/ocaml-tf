(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_action_http__run_after = {
  action_name : string prop;  (** action_name *)
  action_result : string prop;  (** action_result *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_action_http__run_after *)

type azurerm_logic_app_action_http__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_action_http__timeouts *)

type azurerm_logic_app_action_http = {
  body : string prop option; [@option]  (** body *)
  headers : (string * string prop) list option; [@option]
      (** headers *)
  id : string prop option; [@option]  (** id *)
  logic_app_id : string prop;  (** logic_app_id *)
  method_ : string prop; [@key "method"]  (** method *)
  name : string prop;  (** name *)
  queries : (string * string prop) list option; [@option]
      (** queries *)
  uri : string prop;  (** uri *)
  run_after : azurerm_logic_app_action_http__run_after list;
  timeouts : azurerm_logic_app_action_http__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_action_http *)

type t = {
  body : string prop;
  headers : (string * string) list prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  queries : (string * string) list prop;
  uri : string prop;
}

let azurerm_logic_app_action_http ?body ?headers ?id ?queries
    ?timeouts ~logic_app_id ~method_ ~name ~uri ~run_after
    __resource_id =
  let __resource_type = "azurerm_logic_app_action_http" in
  let __resource =
    ({
       body;
       headers;
       id;
       logic_app_id;
       method_;
       name;
       queries;
       uri;
       run_after;
       timeouts;
     }
      : azurerm_logic_app_action_http)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_action_http __resource);
  let __resource_attributes =
    ({
       body = Prop.computed __resource_type __resource_id "body";
       headers =
         Prop.computed __resource_type __resource_id "headers";
       id = Prop.computed __resource_type __resource_id "id";
       logic_app_id =
         Prop.computed __resource_type __resource_id "logic_app_id";
       method_ = Prop.computed __resource_type __resource_id "method";
       name = Prop.computed __resource_type __resource_id "name";
       queries =
         Prop.computed __resource_type __resource_id "queries";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
