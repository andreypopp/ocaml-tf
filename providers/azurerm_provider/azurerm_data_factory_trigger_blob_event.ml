(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_trigger_blob_event__pipeline = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_blob_event__pipeline *)

type azurerm_data_factory_trigger_blob_event__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_blob_event__timeouts *)

type azurerm_data_factory_trigger_blob_event = {
  activated : bool option; [@option]  (** activated *)
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  blob_path_begins_with : string option; [@option]
      (** blob_path_begins_with *)
  blob_path_ends_with : string option; [@option]
      (** blob_path_ends_with *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  events : string list;  (** events *)
  id : string option; [@option]  (** id *)
  ignore_empty_blobs : bool option; [@option]
      (** ignore_empty_blobs *)
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
  pipeline : azurerm_data_factory_trigger_blob_event__pipeline list;
  timeouts : azurerm_data_factory_trigger_blob_event__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_blob_event *)

let azurerm_data_factory_trigger_blob_event ?activated
    ?additional_properties ?annotations ?blob_path_begins_with
    ?blob_path_ends_with ?description ?id ?ignore_empty_blobs
    ?timeouts ~data_factory_id ~events ~name ~storage_account_id
    ~pipeline __resource_id =
  let __resource_type = "azurerm_data_factory_trigger_blob_event" in
  let __resource =
    {
      activated;
      additional_properties;
      annotations;
      blob_path_begins_with;
      blob_path_ends_with;
      data_factory_id;
      description;
      events;
      id;
      ignore_empty_blobs;
      name;
      storage_account_id;
      pipeline;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_blob_event __resource);
  ()
