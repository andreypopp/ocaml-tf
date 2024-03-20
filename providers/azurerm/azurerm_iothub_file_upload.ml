(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?authentication_type ?default_ttl ?id ?identity_id
    ?lock_duration ?max_delivery_count ?notifications_enabled
    ?sas_ttl ?timeouts ~connection_string ~container_name ~iothub_id
    __id =
  let __type = "azurerm_iothub_file_upload" in
  let __attrs =
    ({
       authentication_type =
         Prop.computed __type __id "authentication_type";
       connection_string =
         Prop.computed __type __id "connection_string";
       container_name = Prop.computed __type __id "container_name";
       default_ttl = Prop.computed __type __id "default_ttl";
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       iothub_id = Prop.computed __type __id "iothub_id";
       lock_duration = Prop.computed __type __id "lock_duration";
       max_delivery_count =
         Prop.computed __type __id "max_delivery_count";
       notifications_enabled =
         Prop.computed __type __id "notifications_enabled";
       sas_ttl = Prop.computed __type __id "sas_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_file_upload
        (azurerm_iothub_file_upload ?authentication_type ?default_ttl
           ?id ?identity_id ?lock_duration ?max_delivery_count
           ?notifications_enabled ?sas_ttl ?timeouts
           ~connection_string ~container_name ~iothub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type ?default_ttl ?id
    ?identity_id ?lock_duration ?max_delivery_count
    ?notifications_enabled ?sas_ttl ?timeouts ~connection_string
    ~container_name ~iothub_id __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?default_ttl ?id ?identity_id
      ?lock_duration ?max_delivery_count ?notifications_enabled
      ?sas_ttl ?timeouts ~connection_string ~container_name
      ~iothub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
