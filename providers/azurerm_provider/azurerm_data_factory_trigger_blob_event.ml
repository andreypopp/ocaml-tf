(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_trigger_blob_event__pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_blob_event__pipeline *)

type azurerm_data_factory_trigger_blob_event__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_blob_event__timeouts *)

type azurerm_data_factory_trigger_blob_event = {
  activated : bool prop option; [@option]  (** activated *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  blob_path_begins_with : string prop option; [@option]
      (** blob_path_begins_with *)
  blob_path_ends_with : string prop option; [@option]
      (** blob_path_ends_with *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  events : string prop list;  (** events *)
  id : string prop option; [@option]  (** id *)
  ignore_empty_blobs : bool prop option; [@option]
      (** ignore_empty_blobs *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
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
