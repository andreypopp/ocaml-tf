(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_pipeline__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_pipeline__timeouts *)

type azurerm_data_factory_pipeline = {
  activities_json : string option; [@option]  (** activities_json *)
  annotations : string list option; [@option]  (** annotations *)
  concurrency : float option; [@option]  (** concurrency *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  folder : string option; [@option]  (** folder *)
  moniter_metrics_after_duration : string option; [@option]
      (** moniter_metrics_after_duration *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  variables : (string * string) list option; [@option]
      (** variables *)
  timeouts : azurerm_data_factory_pipeline__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_pipeline *)

let azurerm_data_factory_pipeline ?activities_json ?annotations
    ?concurrency ?description ?folder ?moniter_metrics_after_duration
    ?parameters ?variables ?timeouts ~data_factory_id ~name
    __resource_id =
  let __resource_type = "azurerm_data_factory_pipeline" in
  let __resource =
    {
      activities_json;
      annotations;
      concurrency;
      data_factory_id;
      description;
      folder;
      moniter_metrics_after_duration;
      name;
      parameters;
      variables;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_pipeline __resource);
  ()
