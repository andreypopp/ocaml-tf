(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_arc_kubernetes_cluster__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster__identity *)

type azurerm_arc_kubernetes_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster__timeouts *)

type azurerm_arc_kubernetes_cluster = {
  agent_public_key_certificate : string;
      (** agent_public_key_certificate *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_arc_kubernetes_cluster__identity list;
  timeouts : azurerm_arc_kubernetes_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster *)

let azurerm_arc_kubernetes_cluster ?tags ?timeouts
    ~agent_public_key_certificate ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_arc_kubernetes_cluster" in
  let __resource =
    {
      agent_public_key_certificate;
      location;
      name;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_kubernetes_cluster __resource);
  ()
