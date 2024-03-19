(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type error_blob_managed_identity = {
  client_id : string prop option; [@option]  (** client_id *)
  object_id : string prop option; [@option]  (** object_id *)
}
[@@deriving yojson_of]
(** error_blob_managed_identity *)

type output_blob_managed_identity = {
  client_id : string prop option; [@option]  (** client_id *)
  object_id : string prop option; [@option]  (** object_id *)
}
[@@deriving yojson_of]
(** output_blob_managed_identity *)

type parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** parameter *)

type protected_parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** protected_parameter *)

type source__script_uri_managed_identity = {
  client_id : string prop option; [@option]  (** client_id *)
  object_id : string prop option; [@option]  (** object_id *)
}
[@@deriving yojson_of]
(** source__script_uri_managed_identity *)

type source = {
  command_id : string prop option; [@option]  (** command_id *)
  script : string prop option; [@option]  (** script *)
  script_uri : string prop option; [@option]  (** script_uri *)
  script_uri_managed_identity :
    source__script_uri_managed_identity list;
}
[@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type instance_view = {
  end_time : string prop;  (** end_time *)
  error_message : string prop;  (** error_message *)
  execution_message : string prop;  (** execution_message *)
  execution_state : string prop;  (** execution_state *)
  exit_code : float prop;  (** exit_code *)
  output : string prop;  (** output *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]

type azurerm_virtual_machine_run_command = {
  error_blob_uri : string prop option; [@option]
      (** error_blob_uri *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  output_blob_uri : string prop option; [@option]
      (** output_blob_uri *)
  run_as_password : string prop option; [@option]
      (** run_as_password *)
  run_as_user : string prop option; [@option]  (** run_as_user *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  error_blob_managed_identity : error_blob_managed_identity list;
  output_blob_managed_identity : output_blob_managed_identity list;
  parameter : parameter list;
  protected_parameter : protected_parameter list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_run_command *)

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
    ~script_uri_managed_identity () : source =
  { command_id; script; script_uri; script_uri_managed_identity }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_run_command ?error_blob_uri ?id
    ?output_blob_uri ?run_as_password ?run_as_user ?tags ?timeouts
    ~location ~name ~virtual_machine_id ~error_blob_managed_identity
    ~output_blob_managed_identity ~parameter ~protected_parameter
    ~source () : azurerm_virtual_machine_run_command =
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

let register ?tf_module ?error_blob_uri ?id ?output_blob_uri
    ?run_as_password ?run_as_user ?tags ?timeouts ~location ~name
    ~virtual_machine_id ~error_blob_managed_identity
    ~output_blob_managed_identity ~parameter ~protected_parameter
    ~source __resource_id =
  let __resource_type = "azurerm_virtual_machine_run_command" in
  let __resource =
    azurerm_virtual_machine_run_command ?error_blob_uri ?id
      ?output_blob_uri ?run_as_password ?run_as_user ?tags ?timeouts
      ~location ~name ~virtual_machine_id
      ~error_blob_managed_identity ~output_blob_managed_identity
      ~parameter ~protected_parameter ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_run_command __resource);
  let __resource_attributes =
    ({
       error_blob_uri =
         Prop.computed __resource_type __resource_id "error_blob_uri";
       id = Prop.computed __resource_type __resource_id "id";
       instance_view =
         Prop.computed __resource_type __resource_id "instance_view";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       output_blob_uri =
         Prop.computed __resource_type __resource_id
           "output_blob_uri";
       run_as_password =
         Prop.computed __resource_type __resource_id
           "run_as_password";
       run_as_user =
         Prop.computed __resource_type __resource_id "run_as_user";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_id";
     }
      : t)
  in
  __resource_attributes
