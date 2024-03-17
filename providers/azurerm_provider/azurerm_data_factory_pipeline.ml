(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_pipeline__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_pipeline__timeouts *)

type azurerm_data_factory_pipeline = {
  activities_json : string prop option; [@option]
      (** activities_json *)
  annotations : string prop list option; [@option]
      (** annotations *)
  concurrency : float prop option; [@option]  (** concurrency *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  moniter_metrics_after_duration : string prop option; [@option]
      (** moniter_metrics_after_duration *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  variables : (string * string prop) list option; [@option]
      (** variables *)
  timeouts : azurerm_data_factory_pipeline__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_pipeline *)

let azurerm_data_factory_pipeline ?activities_json ?annotations
    ?concurrency ?description ?folder ?id
    ?moniter_metrics_after_duration ?parameters ?variables ?timeouts
    ~data_factory_id ~name __resource_id =
  let __resource_type = "azurerm_data_factory_pipeline" in
  let __resource =
    {
      activities_json;
      annotations;
      concurrency;
      data_factory_id;
      description;
      folder;
      id;
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
