(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_arc_kubernetes_cluster__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster__identity *)

type azurerm_arc_kubernetes_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster__timeouts *)

type azurerm_arc_kubernetes_cluster = {
  agent_public_key_certificate : string prop;
      (** agent_public_key_certificate *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_arc_kubernetes_cluster__identity list;
  timeouts : azurerm_arc_kubernetes_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster *)

type t = {
  agent_public_key_certificate : string prop;
  agent_version : string prop;
  distribution : string prop;
  id : string prop;
  infrastructure : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  offering : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  total_core_count : float prop;
  total_node_count : float prop;
}

let azurerm_arc_kubernetes_cluster ?id ?tags ?timeouts
    ~agent_public_key_certificate ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_arc_kubernetes_cluster" in
  let __resource =
    ({
       agent_public_key_certificate;
       id;
       location;
       name;
       resource_group_name;
       tags;
       identity;
       timeouts;
     }
      : azurerm_arc_kubernetes_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_kubernetes_cluster __resource);
  let __resource_attributes =
    ({
       agent_public_key_certificate =
         Prop.computed __resource_type __resource_id
           "agent_public_key_certificate";
       agent_version =
         Prop.computed __resource_type __resource_id "agent_version";
       distribution =
         Prop.computed __resource_type __resource_id "distribution";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure =
         Prop.computed __resource_type __resource_id "infrastructure";
       kubernetes_version =
         Prop.computed __resource_type __resource_id
           "kubernetes_version";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       offering =
         Prop.computed __resource_type __resource_id "offering";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       total_core_count =
         Prop.computed __resource_type __resource_id
           "total_core_count";
       total_node_count =
         Prop.computed __resource_type __resource_id
           "total_node_count";
     }
      : t)
  in
  __resource_attributes
