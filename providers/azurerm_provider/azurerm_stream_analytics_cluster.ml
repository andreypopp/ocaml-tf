(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_cluster__timeouts *)

type azurerm_stream_analytics_cluster = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  streaming_capacity : float;  (** streaming_capacity *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_stream_analytics_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_cluster *)

let azurerm_stream_analytics_cluster ?tags ?timeouts ~location ~name
    ~resource_group_name ~streaming_capacity __resource_id =
  let __resource_type = "azurerm_stream_analytics_cluster" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      streaming_capacity;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_cluster __resource);
  ()
