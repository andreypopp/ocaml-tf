(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_inference_cluster__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster__identity *)

type azurerm_machine_learning_inference_cluster__ssl = {
  cert : string prop option; [@option]  (** cert *)
  cname : string prop option; [@option]  (** cname *)
  key : string prop option; [@option]  (** key *)
  leaf_domain_label : string prop option; [@option]
      (** leaf_domain_label *)
  overwrite_existing_domain : bool prop option; [@option]
      (** overwrite_existing_domain *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster__ssl *)

type azurerm_machine_learning_inference_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster__timeouts *)

type azurerm_machine_learning_inference_cluster = {
  cluster_purpose : string prop option; [@option]
      (** cluster_purpose *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kubernetes_cluster_id : string prop;  (** kubernetes_cluster_id *)
  location : string prop;  (** location *)
  machine_learning_workspace_id : string prop;
      (** machine_learning_workspace_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity :
    azurerm_machine_learning_inference_cluster__identity list;
  ssl : azurerm_machine_learning_inference_cluster__ssl list;
  timeouts :
    azurerm_machine_learning_inference_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster *)

type t = {
  cluster_purpose : string prop;
  description : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let azurerm_machine_learning_inference_cluster ?cluster_purpose
    ?description ?id ?tags ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl __resource_id
    =
  let __resource_type =
    "azurerm_machine_learning_inference_cluster"
  in
  let __resource =
    ({
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
      : azurerm_machine_learning_inference_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_inference_cluster __resource);
  let __resource_attributes =
    ({
       cluster_purpose =
         Prop.computed __resource_type __resource_id
           "cluster_purpose";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_cluster_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_cluster_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       machine_learning_workspace_id =
         Prop.computed __resource_type __resource_id
           "machine_learning_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
