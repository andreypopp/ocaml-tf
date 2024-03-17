(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_cluster__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster__identity *)

type azurerm_log_analytics_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster__timeouts *)

type azurerm_log_analytics_cluster = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  size_gb : float option; [@option]  (** size_gb *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_log_analytics_cluster__identity list;
  timeouts : azurerm_log_analytics_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster *)

let azurerm_log_analytics_cluster ?id ?size_gb ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_log_analytics_cluster" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      size_gb;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_cluster __resource);
  ()
