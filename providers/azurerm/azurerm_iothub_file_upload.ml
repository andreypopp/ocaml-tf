(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iothub_file_upload = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  connection_string : string prop;  (** connection_string *)
  container_name : string prop;  (** container_name *)
  default_ttl : string prop option; [@option]  (** default_ttl *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  iothub_id : string prop;  (** iothub_id *)
  lock_duration : string prop option; [@option]  (** lock_duration *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  notifications_enabled : bool prop option; [@option]
      (** notifications_enabled *)
  sas_ttl : string prop option; [@option]  (** sas_ttl *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_file_upload *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_file_upload ?authentication_type ?default_ttl ?id
    ?identity_id ?lock_duration ?max_delivery_count
    ?notifications_enabled ?sas_ttl ?timeouts ~connection_string
    ~container_name ~iothub_id () : azurerm_iothub_file_upload =
  {
    authentication_type;
    connection_string;
    container_name;
    default_ttl;
    id;
    identity_id;
    iothub_id;
    lock_duration;
    max_delivery_count;
    notifications_enabled;
    sas_ttl;
    timeouts;
  }

type t = {
  authentication_type : string prop;
  connection_string : string prop;
  container_name : string prop;
  default_ttl : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  lock_duration : string prop;
  max_delivery_count : float prop;
  notifications_enabled : bool prop;
  sas_ttl : string prop;
}

let register ?tf_module ?authentication_type ?default_ttl ?id
    ?identity_id ?lock_duration ?max_delivery_count
    ?notifications_enabled ?sas_ttl ?timeouts ~connection_string
    ~container_name ~iothub_id __resource_id =
  let __resource_type = "azurerm_iothub_file_upload" in
  let __resource =
    azurerm_iothub_file_upload ?authentication_type ?default_ttl ?id
      ?identity_id ?lock_duration ?max_delivery_count
      ?notifications_enabled ?sas_ttl ?timeouts ~connection_string
      ~container_name ~iothub_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_file_upload __resource);
  let __resource_attributes =
    ({
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       connection_string =
         Prop.computed __resource_type __resource_id
           "connection_string";
       container_name =
         Prop.computed __resource_type __resource_id "container_name";
       default_ttl =
         Prop.computed __resource_type __resource_id "default_ttl";
       id = Prop.computed __resource_type __resource_id "id";
       identity_id =
         Prop.computed __resource_type __resource_id "identity_id";
       iothub_id =
         Prop.computed __resource_type __resource_id "iothub_id";
       lock_duration =
         Prop.computed __resource_type __resource_id "lock_duration";
       max_delivery_count =
         Prop.computed __resource_type __resource_id
           "max_delivery_count";
       notifications_enabled =
         Prop.computed __resource_type __resource_id
           "notifications_enabled";
       sas_ttl =
         Prop.computed __resource_type __resource_id "sas_ttl";
     }
      : t)
  in
  __resource_attributes
