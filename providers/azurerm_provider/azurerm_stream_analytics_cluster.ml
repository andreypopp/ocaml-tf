(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_cluster__timeouts *)

type azurerm_stream_analytics_cluster = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  streaming_capacity : float prop;  (** streaming_capacity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_stream_analytics_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_cluster *)

let azurerm_stream_analytics_cluster ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~streaming_capacity __resource_id =
  let __resource_type = "azurerm_stream_analytics_cluster" in
  let __resource =
    {
      id;
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
