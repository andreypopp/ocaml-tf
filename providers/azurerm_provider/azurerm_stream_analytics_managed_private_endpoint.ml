(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_managed_private_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_managed_private_endpoint__timeouts *)

type azurerm_stream_analytics_managed_private_endpoint = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  stream_analytics_cluster_name : string;
      (** stream_analytics_cluster_name *)
  subresource_name : string;  (** subresource_name *)
  target_resource_id : string;  (** target_resource_id *)
  timeouts :
    azurerm_stream_analytics_managed_private_endpoint__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_managed_private_endpoint *)

let azurerm_stream_analytics_managed_private_endpoint ?timeouts ~name
    ~resource_group_name ~stream_analytics_cluster_name
    ~subresource_name ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_managed_private_endpoint"
  in
  let __resource =
    {
      name;
      resource_group_name;
      stream_analytics_cluster_name;
      subresource_name;
      target_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_managed_private_endpoint
       __resource);
  ()
