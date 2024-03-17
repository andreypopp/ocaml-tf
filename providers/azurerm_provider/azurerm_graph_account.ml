(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_graph_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_graph_account__timeouts *)

type azurerm_graph_account = {
  application_id : string;  (** application_id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_graph_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_graph_account *)

let azurerm_graph_account ?tags ?timeouts ~application_id ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_graph_account" in
  let __resource =
    { application_id; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_graph_account __resource);
  ()
