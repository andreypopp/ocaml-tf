(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub__capture_description__destination = {
  archive_name_format : string prop;  (** archive_name_format *)
  blob_container_name : string prop;  (** blob_container_name *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_eventhub__capture_description__destination *)

type azurerm_eventhub__capture_description = {
  enabled : bool prop;  (** enabled *)
  encoding : string prop;  (** encoding *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  size_limit_in_bytes : float prop option; [@option]
      (** size_limit_in_bytes *)
  skip_empty_archives : bool prop option; [@option]
      (** skip_empty_archives *)
  destination :
    azurerm_eventhub__capture_description__destination list;
}
[@@deriving yojson_of]
(** azurerm_eventhub__capture_description *)

type azurerm_eventhub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub__timeouts *)

type azurerm_eventhub = {
  id : string prop option; [@option]  (** id *)
  message_retention : float prop;  (** message_retention *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  partition_count : float prop;  (** partition_count *)
  resource_group_name : string prop;  (** resource_group_name *)
  status : string prop option; [@option]  (** status *)
  capture_description : azurerm_eventhub__capture_description list;
  timeouts : azurerm_eventhub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub *)

let azurerm_eventhub ?id ?status ?timeouts ~message_retention ~name
    ~namespace_name ~partition_count ~resource_group_name
    ~capture_description __resource_id =
  let __resource_type = "azurerm_eventhub" in
  let __resource =
    {
      id;
      message_retention;
      name;
      namespace_name;
      partition_count;
      resource_group_name;
      status;
      capture_description;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub __resource);
  ()
