(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_inference_cluster__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster__identity *)

type azurerm_machine_learning_inference_cluster__ssl = {
  cert : string option; [@option]  (** cert *)
  cname : string option; [@option]  (** cname *)
  key : string option; [@option]  (** key *)
  leaf_domain_label : string option; [@option]
      (** leaf_domain_label *)
  overwrite_existing_domain : bool option; [@option]
      (** overwrite_existing_domain *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster__ssl *)

type azurerm_machine_learning_inference_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster__timeouts *)

type azurerm_machine_learning_inference_cluster = {
  cluster_purpose : string option; [@option]  (** cluster_purpose *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  kubernetes_cluster_id : string;  (** kubernetes_cluster_id *)
  location : string;  (** location *)
  machine_learning_workspace_id : string;
      (** machine_learning_workspace_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity :
    azurerm_machine_learning_inference_cluster__identity list;
  ssl : azurerm_machine_learning_inference_cluster__ssl list;
  timeouts :
    azurerm_machine_learning_inference_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster *)

let azurerm_machine_learning_inference_cluster ?cluster_purpose
    ?description ?id ?tags ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl __resource_id
    =
  let __resource_type =
    "azurerm_machine_learning_inference_cluster"
  in
  let __resource =
    {
      cluster_purpose;
      description;
      id;
      kubernetes_cluster_id;
      location;
      machine_learning_workspace_id;
      name;
      tags;
      identity;
      ssl;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_inference_cluster __resource);
  ()
