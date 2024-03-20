(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_iothub_file_upload = {
  authentication_type : string prop option; [@option]
  connection_string : string prop;
  container_name : string prop;
  default_ttl : string prop option; [@option]
  id : string prop option; [@option]
  identity_id : string prop option; [@option]
  iothub_id : string prop;
  lock_duration : string prop option; [@option]
  max_delivery_count : float prop option; [@option]
  notifications_enabled : bool prop option; [@option]
  sas_ttl : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_file_upload) -> ()

let yojson_of_azurerm_iothub_file_upload =
  (function
   | {
       authentication_type = v_authentication_type;
       connection_string = v_connection_string;
       container_name = v_container_name;
       default_ttl = v_default_ttl;
       id = v_id;
       identity_id = v_identity_id;
       iothub_id = v_iothub_id;
       lock_duration = v_lock_duration;
       max_delivery_count = v_max_delivery_count;
       notifications_enabled = v_notifications_enabled;
       sas_ttl = v_sas_ttl;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_sas_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sas_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notifications_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "notifications_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_delivery_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delivery_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lock_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lock_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_id in
         ("iothub_id", arg) :: bnds
       in
       let bnds =
         match v_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_file_upload -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_file_upload

[@@@deriving.end]

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
