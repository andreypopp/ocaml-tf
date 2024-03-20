(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cluster_purpose ?description ?id ?tags ?timeouts
    ~kubernetes_cluster_id ~location ~machine_learning_workspace_id
    ~name ~identity ~ssl __id =
  let __type = "azurerm_machine_learning_inference_cluster" in
  let __attrs =
    ({
       cluster_purpose = Prop.computed __type __id "cluster_purpose";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       location = Prop.computed __type __id "location";
       machine_learning_workspace_id =
         Prop.computed __type __id "machine_learning_workspace_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_inference_cluster
        (azurerm_machine_learning_inference_cluster ?cluster_purpose
           ?description ?id ?tags ?timeouts ~kubernetes_cluster_id
           ~location ~machine_learning_workspace_id ~name ~identity
           ~ssl ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_purpose ?description ?id ?tags
    ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_purpose ?description ?id ?tags ?timeouts
      ~kubernetes_cluster_id ~location ~machine_learning_workspace_id
      ~name ~identity ~ssl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
