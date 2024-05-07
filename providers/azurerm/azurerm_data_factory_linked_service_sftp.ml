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

type azurerm_data_factory_linked_service_sftp = {
  additional_properties : (string * string prop) list option;
      [@option]
  annotations : string prop list option; [@option]
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop option; [@option]
  host : string prop;
  host_key_fingerprint : string prop option; [@option]
  id : string prop option; [@option]
  integration_runtime_name : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  password : string prop;
  port : float prop;
  skip_host_key_validation : bool prop option; [@option]
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_linked_service_sftp) -> ()

let yojson_of_azurerm_data_factory_linked_service_sftp =
  (function
   | {
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       authentication_type = v_authentication_type;
       data_factory_id = v_data_factory_id;
       description = v_description;
       host = v_host;
       host_key_fingerprint = v_host_key_fingerprint;
       id = v_id;
       integration_runtime_name = v_integration_runtime_name;
       name = v_name;
       parameters = v_parameters;
       password = v_password;
       port = v_port;
       skip_host_key_validation = v_skip_host_key_validation;
       username = v_username;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_skip_host_key_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_host_key_validation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_integration_runtime_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_runtime_name", arg in
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
         match v_host_key_fingerprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key_fingerprint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_properties with
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
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_linked_service_sftp ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_linked_service_sftp

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_sftp ?additional_properties
    ?annotations ?description ?host_key_fingerprint ?id
    ?integration_runtime_name ?parameters ?skip_host_key_validation
    ?timeouts ~authentication_type ~data_factory_id ~host ~name
    ~password ~port ~username () :
    azurerm_data_factory_linked_service_sftp =
  {
    additional_properties;
    annotations;
    authentication_type;
    data_factory_id;
    description;
    host;
    host_key_fingerprint;
    id;
    integration_runtime_name;
    name;
    parameters;
    password;
    port;
    skip_host_key_validation;
    username;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop;
  host : string prop;
  host_key_fingerprint : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  port : float prop;
  skip_host_key_validation : bool prop;
  username : string prop;
}

let make ?additional_properties ?annotations ?description
    ?host_key_fingerprint ?id ?integration_runtime_name ?parameters
    ?skip_host_key_validation ?timeouts ~authentication_type
    ~data_factory_id ~host ~name ~password ~port ~username __id =
  let __type = "azurerm_data_factory_linked_service_sftp" in
  let __attrs =
    ({
       tf_name = __id;
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       host = Prop.computed __type __id "host";
       host_key_fingerprint =
         Prop.computed __type __id "host_key_fingerprint";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       skip_host_key_validation =
         Prop.computed __type __id "skip_host_key_validation";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_sftp
        (azurerm_data_factory_linked_service_sftp
           ?additional_properties ?annotations ?description
           ?host_key_fingerprint ?id ?integration_runtime_name
           ?parameters ?skip_host_key_validation ?timeouts
           ~authentication_type ~data_factory_id ~host ~name
           ~password ~port ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?host_key_fingerprint ?id ?integration_runtime_name
    ?parameters ?skip_host_key_validation ?timeouts
    ~authentication_type ~data_factory_id ~host ~name ~password ~port
    ~username __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description
      ?host_key_fingerprint ?id ?integration_runtime_name ?parameters
      ?skip_host_key_validation ?timeouts ~authentication_type
      ~data_factory_id ~host ~name ~password ~port ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
