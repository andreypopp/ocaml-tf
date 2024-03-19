(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_managed_private_endpoint = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  stream_analytics_cluster_name : string prop;
      (** stream_analytics_cluster_name *)
  subresource_name : string prop;  (** subresource_name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_managed_private_endpoint *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_stream_analytics_managed_private_endpoint ?id ?timeouts
    ~name ~resource_group_name ~stream_analytics_cluster_name
    ~subresource_name ~target_resource_id () :
    azurerm_stream_analytics_managed_private_endpoint =
  {
    id;
    name;
    resource_group_name;
    stream_analytics_cluster_name;
    subresource_name;
    target_resource_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_cluster_name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~stream_analytics_cluster_name ~subresource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_managed_private_endpoint"
  in
  let __resource =
    azurerm_stream_analytics_managed_private_endpoint ?id ?timeouts
      ~name ~resource_group_name ~stream_analytics_cluster_name
      ~subresource_name ~target_resource_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_managed_private_endpoint
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       stream_analytics_cluster_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_cluster_name";
       subresource_name =
         Prop.computed __resource_type __resource_id
           "subresource_name";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
