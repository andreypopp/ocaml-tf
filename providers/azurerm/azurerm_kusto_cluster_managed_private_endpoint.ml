(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kusto_cluster_managed_private_endpoint = {
  cluster_name : string prop;  (** cluster_name *)
  group_id : string prop;  (** group_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_link_resource_id : string prop;
      (** private_link_resource_id *)
  private_link_resource_region : string prop option; [@option]
      (** private_link_resource_region *)
  request_message : string prop option; [@option]
      (** request_message *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_managed_private_endpoint *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_cluster_managed_private_endpoint ?id
    ?private_link_resource_region ?request_message ?timeouts
    ~cluster_name ~group_id ~name ~private_link_resource_id
    ~resource_group_name () :
    azurerm_kusto_cluster_managed_private_endpoint =
  {
    cluster_name;
    group_id;
    id;
    name;
    private_link_resource_id;
    private_link_resource_region;
    request_message;
    resource_group_name;
    timeouts;
  }

type t = {
  cluster_name : string prop;
  group_id : string prop;
  id : string prop;
  name : string prop;
  private_link_resource_id : string prop;
  private_link_resource_region : string prop;
  request_message : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?private_link_resource_region
    ?request_message ?timeouts ~cluster_name ~group_id ~name
    ~private_link_resource_id ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_kusto_cluster_managed_private_endpoint"
  in
  let __resource =
    azurerm_kusto_cluster_managed_private_endpoint ?id
      ?private_link_resource_region ?request_message ?timeouts
      ~cluster_name ~group_id ~name ~private_link_resource_id
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cluster_managed_private_endpoint
       __resource);
  let __resource_attributes =
    ({
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       group_id =
         Prop.computed __resource_type __resource_id "group_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       private_link_resource_id =
         Prop.computed __resource_type __resource_id
           "private_link_resource_id";
       private_link_resource_region =
         Prop.computed __resource_type __resource_id
           "private_link_resource_region";
       request_message =
         Prop.computed __resource_type __resource_id
           "request_message";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
