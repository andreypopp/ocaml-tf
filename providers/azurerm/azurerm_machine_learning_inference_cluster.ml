(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type ssl = {
  cert : string prop option; [@option]  (** cert *)
  cname : string prop option; [@option]  (** cname *)
  key : string prop option; [@option]  (** key *)
  leaf_domain_label : string prop option; [@option]
      (** leaf_domain_label *)
  overwrite_existing_domain : bool prop option; [@option]
      (** overwrite_existing_domain *)
}
[@@deriving yojson_of]
(** ssl *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  identity : identity list;
  ssl : ssl list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_inference_cluster *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ssl ?cert ?cname ?key ?leaf_domain_label
    ?overwrite_existing_domain () : ssl =
  { cert; cname; key; leaf_domain_label; overwrite_existing_domain }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_inference_cluster ?cluster_purpose
    ?description ?id ?tags ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl () :
    azurerm_machine_learning_inference_cluster =
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

let register ?tf_module ?cluster_purpose ?description ?id ?tags
    ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl __resource_id
    =
  let __resource_type =
    "azurerm_machine_learning_inference_cluster"
  in
  let __resource =
    azurerm_machine_learning_inference_cluster ?cluster_purpose
      ?description ?id ?tags ?timeouts ~kubernetes_cluster_id
      ~location ~machine_learning_workspace_id ~name ~identity ~ssl
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
