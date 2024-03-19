(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type capture_description__destination = {
  archive_name_format : string prop;  (** archive_name_format *)
  blob_container_name : string prop;  (** blob_container_name *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** capture_description__destination *)

type capture_description = {
  enabled : bool prop;  (** enabled *)
  encoding : string prop;  (** encoding *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  size_limit_in_bytes : float prop option; [@option]
      (** size_limit_in_bytes *)
  skip_empty_archives : bool prop option; [@option]
      (** skip_empty_archives *)
  destination : capture_description__destination list;
}
[@@deriving yojson_of]
(** capture_description *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_eventhub = {
  id : string prop option; [@option]  (** id *)
  message_retention : float prop;  (** message_retention *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  partition_count : float prop;  (** partition_count *)
  resource_group_name : string prop;  (** resource_group_name *)
  status : string prop option; [@option]  (** status *)
  capture_description : capture_description list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub *)

let capture_description__destination ~archive_name_format
    ~blob_container_name ~name ~storage_account_id () :
    capture_description__destination =
  {
    archive_name_format;
    blob_container_name;
    name;
    storage_account_id;
  }

let capture_description ?interval_in_seconds ?size_limit_in_bytes
    ?skip_empty_archives ~enabled ~encoding ~destination () :
    capture_description =
  {
    enabled;
    encoding;
    interval_in_seconds;
    size_limit_in_bytes;
    skip_empty_archives;
    destination;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub ?id ?status ?timeouts ~message_retention ~name
    ~namespace_name ~partition_count ~resource_group_name
    ~capture_description () : azurerm_eventhub =
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

type t = {
  id : string prop;
  message_retention : float prop;
  name : string prop;
  namespace_name : string prop;
  partition_count : float prop;
  partition_ids : string list prop;
  resource_group_name : string prop;
  status : string prop;
}

let register ?tf_module ?id ?status ?timeouts ~message_retention
    ~name ~namespace_name ~partition_count ~resource_group_name
    ~capture_description __resource_id =
  let __resource_type = "azurerm_eventhub" in
  let __resource =
    azurerm_eventhub ?id ?status ?timeouts ~message_retention ~name
      ~namespace_name ~partition_count ~resource_group_name
      ~capture_description ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       message_retention =
         Prop.computed __resource_type __resource_id
           "message_retention";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       partition_count =
         Prop.computed __resource_type __resource_id
           "partition_count";
       partition_ids =
         Prop.computed __resource_type __resource_id "partition_ids";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
