(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_cluster__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster__identity *)

type azurerm_log_analytics_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster__timeouts *)

type azurerm_log_analytics_cluster = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  size_gb : float prop option; [@option]  (** size_gb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_log_analytics_cluster__identity list;
  timeouts : azurerm_log_analytics_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster *)

type t = {
  cluster_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  size_gb : float prop;
  tags : (string * string) list prop;
}

let azurerm_log_analytics_cluster ?id ?size_gb ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_log_analytics_cluster" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       size_gb;
       tags;
       identity;
       timeouts;
     }
      : azurerm_log_analytics_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_cluster __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       size_gb =
         Prop.computed __resource_type __resource_id "size_gb";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
