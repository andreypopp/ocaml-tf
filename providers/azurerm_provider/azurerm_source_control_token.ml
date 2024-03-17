(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_source_control_token__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_source_control_token__timeouts *)

type azurerm_source_control_token = {
  id : string prop option; [@option]  (** id *)
  token : string prop;  (** token *)
  token_secret : string prop option; [@option]  (** token_secret *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : azurerm_source_control_token__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_source_control_token *)

let azurerm_source_control_token ?id ?token_secret ?timeouts ~token
    ~type_ __resource_id =
  let __resource_type = "azurerm_source_control_token" in
  let __resource = { id; token; token_secret; type_; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_source_control_token __resource);
  ()
