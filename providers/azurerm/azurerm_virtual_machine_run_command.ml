(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type error_blob_managed_identity = {
  client_id : string prop option; [@option]
  object_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_blob_managed_identity) -> ()

let yojson_of_error_blob_managed_identity =
  (function
   | { client_id = v_client_id; object_id = v_object_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_object_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_blob_managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_blob_managed_identity

[@@@deriving.end]

type output_blob_managed_identity = {
  client_id : string prop option; [@option]
  object_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_blob_managed_identity) -> ()

let yojson_of_output_blob_managed_identity =
  (function
   | { client_id = v_client_id; object_id = v_object_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_object_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output_blob_managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_blob_managed_identity

[@@@deriving.end]

type parameter = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter) -> ()

let yojson_of_parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter

[@@@deriving.end]

type protected_parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protected_parameter) -> ()

let yojson_of_protected_parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : protected_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protected_parameter

[@@@deriving.end]

type source__script_uri_managed_identity = {
  client_id : string prop option; [@option]
  object_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__script_uri_managed_identity) -> ()

let yojson_of_source__script_uri_managed_identity =
  (function
   | { client_id = v_client_id; object_id = v_object_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_object_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__script_uri_managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__script_uri_managed_identity

[@@@deriving.end]

type source = {
  command_id : string prop option; [@option]
  script : string prop option; [@option]
  script_uri : string prop option; [@option]
  script_uri_managed_identity :
    source__script_uri_managed_identity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       command_id = v_command_id;
       script = v_script;
       script_uri = v_script_uri;
       script_uri_managed_identity = v_script_uri_managed_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source__script_uri_managed_identity
             v_script_uri_managed_identity
         in
         ("script_uri_managed_identity", arg) :: bnds
       in
       let bnds =
         match v_script_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "command_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

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

type instance_view = {
  end_time : string prop;
  error_message : string prop;
  execution_message : string prop;
  execution_state : string prop;
  exit_code : float prop;
  output : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_view) -> ()

let yojson_of_instance_view =
  (function
   | {
       end_time = v_end_time;
       error_message = v_error_message;
       execution_message = v_execution_message;
       execution_state = v_execution_state;
       exit_code = v_exit_code;
       output = v_output;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_output in
         ("output", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_exit_code in
         ("exit_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_state
         in
         ("execution_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_message
         in
         ("execution_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_message in
         ("error_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : instance_view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_view

[@@@deriving.end]

type azurerm_virtual_machine_run_command = {
  error_blob_uri : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  output_blob_uri : string prop option; [@option]
  run_as_password : string prop option; [@option]
  run_as_user : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_machine_id : string prop;
  error_blob_managed_identity : error_blob_managed_identity list;
  output_blob_managed_identity : output_blob_managed_identity list;
  parameter : parameter list;
  protected_parameter : protected_parameter list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine_run_command) -> ()

let yojson_of_azurerm_virtual_machine_run_command =
  (function
   | {
       error_blob_uri = v_error_blob_uri;
       id = v_id;
       location = v_location;
       name = v_name;
       output_blob_uri = v_output_blob_uri;
       run_as_password = v_run_as_password;
       run_as_user = v_run_as_user;
       tags = v_tags;
       virtual_machine_id = v_virtual_machine_id;
       error_blob_managed_identity = v_error_blob_managed_identity;
       output_blob_managed_identity = v_output_blob_managed_identity;
       parameter = v_parameter;
       protected_parameter = v_protected_parameter;
       source = v_source;
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
         let arg = yojson_of_list yojson_of_source v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_protected_parameter
             v_protected_parameter
         in
         ("protected_parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_parameter v_parameter in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_blob_managed_identity
             v_output_blob_managed_identity
         in
         ("output_blob_managed_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_error_blob_managed_identity
             v_error_blob_managed_identity
         in
         ("error_blob_managed_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_blob_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_error_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_run_command ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_run_command

[@@@deriving.end]

let error_blob_managed_identity ?client_id ?object_id () :
    error_blob_managed_identity =
  { client_id; object_id }

let output_blob_managed_identity ?client_id ?object_id () :
    output_blob_managed_identity =
  { client_id; object_id }

let parameter ~name ~value () : parameter = { name; value }

let protected_parameter ~name ~value () : protected_parameter =
  { name; value }

let source__script_uri_managed_identity ?client_id ?object_id () :
    source__script_uri_managed_identity =
  { client_id; object_id }

let source ?command_id ?script ?script_uri
    ?(script_uri_managed_identity = []) () : source =
  { command_id; script; script_uri; script_uri_managed_identity }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_run_command ?error_blob_uri ?id
    ?output_blob_uri ?run_as_password ?run_as_user ?tags
    ?(error_blob_managed_identity = [])
    ?(output_blob_managed_identity = []) ?(parameter = [])
    ?(protected_parameter = []) ?timeouts ~location ~name
    ~virtual_machine_id ~source () :
    azurerm_virtual_machine_run_command =
  {
    error_blob_uri;
    id;
    location;
    name;
    output_blob_uri;
    run_as_password;
    run_as_user;
    tags;
    virtual_machine_id;
    error_blob_managed_identity;
    output_blob_managed_identity;
    parameter;
    protected_parameter;
    source;
    timeouts;
  }

type t = {
  error_blob_uri : string prop;
  id : string prop;
  instance_view : instance_view list prop;
  location : string prop;
  name : string prop;
  output_blob_uri : string prop;
  run_as_password : string prop;
  run_as_user : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

let make ?error_blob_uri ?id ?output_blob_uri ?run_as_password
    ?run_as_user ?tags ?(error_blob_managed_identity = [])
    ?(output_blob_managed_identity = []) ?(parameter = [])
    ?(protected_parameter = []) ?timeouts ~location ~name
    ~virtual_machine_id ~source __id =
  let __type = "azurerm_virtual_machine_run_command" in
  let __attrs =
    ({
       error_blob_uri = Prop.computed __type __id "error_blob_uri";
       id = Prop.computed __type __id "id";
       instance_view = Prop.computed __type __id "instance_view";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       output_blob_uri = Prop.computed __type __id "output_blob_uri";
       run_as_password = Prop.computed __type __id "run_as_password";
       run_as_user = Prop.computed __type __id "run_as_user";
       tags = Prop.computed __type __id "tags";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_run_command
        (azurerm_virtual_machine_run_command ?error_blob_uri ?id
           ?output_blob_uri ?run_as_password ?run_as_user ?tags
           ~error_blob_managed_identity ~output_blob_managed_identity
           ~parameter ~protected_parameter ?timeouts ~location ~name
           ~virtual_machine_id ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?error_blob_uri ?id ?output_blob_uri
    ?run_as_password ?run_as_user ?tags
    ?(error_blob_managed_identity = [])
    ?(output_blob_managed_identity = []) ?(parameter = [])
    ?(protected_parameter = []) ?timeouts ~location ~name
    ~virtual_machine_id ~source __id =
  let (r : _ Tf_core.resource) =
    make ?error_blob_uri ?id ?output_blob_uri ?run_as_password
      ?run_as_user ?tags ~error_blob_managed_identity
      ~output_blob_managed_identity ~parameter ~protected_parameter
      ?timeouts ~location ~name ~virtual_machine_id ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
