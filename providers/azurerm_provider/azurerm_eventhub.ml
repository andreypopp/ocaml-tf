(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_eventhub__capture_description__destination = {
  archive_name_format : string;  (** archive_name_format *)
  blob_container_name : string;  (** blob_container_name *)
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_eventhub__capture_description__destination *)

type azurerm_eventhub__capture_description = {
  enabled : bool;  (** enabled *)
  encoding : string;  (** encoding *)
  interval_in_seconds : float option; [@option]
      (** interval_in_seconds *)
  size_limit_in_bytes : float option; [@option]
      (** size_limit_in_bytes *)
  skip_empty_archives : bool option; [@option]
      (** skip_empty_archives *)
  destination :
    azurerm_eventhub__capture_description__destination list;
}
[@@deriving yojson_of]
(** azurerm_eventhub__capture_description *)

type azurerm_eventhub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub__timeouts *)

type azurerm_eventhub = {
  message_retention : float;  (** message_retention *)
  name : string;  (** name *)
  namespace_name : string;  (** namespace_name *)
  partition_count : float;  (** partition_count *)
  resource_group_name : string;  (** resource_group_name *)
  status : string option; [@option]  (** status *)
  capture_description : azurerm_eventhub__capture_description list;
  timeouts : azurerm_eventhub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub *)

let azurerm_eventhub ?status ?timeouts ~message_retention ~name
    ~namespace_name ~partition_count ~resource_group_name
    ~capture_description __resource_id =
  let __resource_type = "azurerm_eventhub" in
  let __resource =
    {
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
