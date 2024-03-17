(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_source_control_token__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_source_control_token__timeouts *)

type azurerm_source_control_token = {
  token : string;  (** token *)
  token_secret : string option; [@option]  (** token_secret *)
  type_ : string; [@key "type"]  (** type *)
  timeouts : azurerm_source_control_token__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_source_control_token *)

let azurerm_source_control_token ?token_secret ?timeouts ~token
    ~type_ __resource_id =
  let __resource_type = "azurerm_source_control_token" in
  let __resource = { token; token_secret; type_; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_source_control_token __resource);
  ()
