(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_graph_services_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_graph_services_account__timeouts *)

type azurerm_graph_services_account = {
  application_id : string prop;  (** application_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_graph_services_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_graph_services_account *)

let azurerm_graph_services_account ?id ?tags ?timeouts
    ~application_id ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_graph_services_account" in
  let __resource =
    { application_id; id; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_graph_services_account __resource);
  ()
