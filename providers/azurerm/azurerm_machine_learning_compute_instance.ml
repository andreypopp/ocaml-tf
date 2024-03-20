(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assign_to_user = {
  object_id : string prop option; [@option]  (** object_id *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** assign_to_user *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type ssh = { public_key : string prop  (** public_key *) }
[@@deriving yojson_of]
(** ssh *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_machine_learning_compute_instance = {
  authorization_type : string prop option; [@option]
      (** authorization_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  machine_learning_workspace_id : string prop;
      (** machine_learning_workspace_id *)
  name : string prop;  (** name *)
  node_public_ip_enabled : bool prop option; [@option]
      (** node_public_ip_enabled *)
  subnet_resource_id : string prop option; [@option]
      (** subnet_resource_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_machine_size : string prop;  (** virtual_machine_size *)
  assign_to_user : assign_to_user list;
  identity : identity list;
  ssh : ssh list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance *)

let assign_to_user ?object_id ?tenant_id () : assign_to_user =
  { object_id; tenant_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ssh ~public_key () : ssh = { public_key }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_compute_instance ?authorization_type
    ?description ?id ?local_auth_enabled ?node_public_ip_enabled
    ?subnet_resource_id ?tags ?timeouts ~location
    ~machine_learning_workspace_id ~name ~virtual_machine_size
    ~assign_to_user ~identity ~ssh () :
    azurerm_machine_learning_compute_instance =
  {
    authorization_type;
    description;
    id;
    local_auth_enabled;
    location;
    machine_learning_workspace_id;
    name;
    node_public_ip_enabled;
    subnet_resource_id;
    tags;
    virtual_machine_size;
    assign_to_user;
    identity;
    ssh;
    timeouts;
  }

type t = {
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : (string * string) list prop;
  virtual_machine_size : string prop;
}

let make ?authorization_type ?description ?id ?local_auth_enabled
    ?node_public_ip_enabled ?subnet_resource_id ?tags ?timeouts
    ~location ~machine_learning_workspace_id ~name
    ~virtual_machine_size ~assign_to_user ~identity ~ssh __id =
  let __type = "azurerm_machine_learning_compute_instance" in
  let __attrs =
    ({
       authorization_type =
         Prop.computed __type __id "authorization_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       machine_learning_workspace_id =
         Prop.computed __type __id "machine_learning_workspace_id";
       name = Prop.computed __type __id "name";
       node_public_ip_enabled =
         Prop.computed __type __id "node_public_ip_enabled";
       subnet_resource_id =
         Prop.computed __type __id "subnet_resource_id";
       tags = Prop.computed __type __id "tags";
       virtual_machine_size =
         Prop.computed __type __id "virtual_machine_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_compute_instance
        (azurerm_machine_learning_compute_instance
           ?authorization_type ?description ?id ?local_auth_enabled
           ?node_public_ip_enabled ?subnet_resource_id ?tags
           ?timeouts ~location ~machine_learning_workspace_id ~name
           ~virtual_machine_size ~assign_to_user ~identity ~ssh ());
    attrs = __attrs;
  }

let register ?tf_module ?authorization_type ?description ?id
    ?local_auth_enabled ?node_public_ip_enabled ?subnet_resource_id
    ?tags ?timeouts ~location ~machine_learning_workspace_id ~name
    ~virtual_machine_size ~assign_to_user ~identity ~ssh __id =
  let (r : _ Tf_core.resource) =
    make ?authorization_type ?description ?id ?local_auth_enabled
      ?node_public_ip_enabled ?subnet_resource_id ?tags ?timeouts
      ~location ~machine_learning_workspace_id ~name
      ~virtual_machine_size ~assign_to_user ~identity ~ssh __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
