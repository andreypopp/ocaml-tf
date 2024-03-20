(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_shutdown = {
  disconnect_delay : string prop option; [@option]
      (** disconnect_delay *)
  idle_delay : string prop option; [@option]  (** idle_delay *)
  no_connect_delay : string prop option; [@option]
      (** no_connect_delay *)
  shutdown_on_idle : string prop option; [@option]
      (** shutdown_on_idle *)
}
[@@deriving yojson_of]
(** auto_shutdown *)

type connection_setting = {
  client_rdp_access : string prop option; [@option]
      (** client_rdp_access *)
  client_ssh_access : string prop option; [@option]
      (** client_ssh_access *)
}
[@@deriving yojson_of]
(** connection_setting *)

type network = {
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** network *)

type roster = {
  active_directory_group_id : string prop option; [@option]
      (** active_directory_group_id *)
  lms_instance : string prop option; [@option]  (** lms_instance *)
  lti_client_id : string prop option; [@option]  (** lti_client_id *)
  lti_context_id : string prop option; [@option]
      (** lti_context_id *)
  lti_roster_endpoint : string prop option; [@option]
      (** lti_roster_endpoint *)
}
[@@deriving yojson_of]
(** roster *)

type security = {
  open_access_enabled : bool prop;  (** open_access_enabled *)
}
[@@deriving yojson_of]
(** security *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type virtual_machine__admin_user = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** virtual_machine__admin_user *)

type virtual_machine__image_reference = {
  id : string prop option; [@option]  (** id *)
  offer : string prop option; [@option]  (** offer *)
  publisher : string prop option; [@option]  (** publisher *)
  sku : string prop option; [@option]  (** sku *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** virtual_machine__image_reference *)

type virtual_machine__non_admin_user = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** virtual_machine__non_admin_user *)

type virtual_machine__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** virtual_machine__sku *)

type virtual_machine = {
  additional_capability_gpu_drivers_installed : bool prop option;
      [@option]
      (** additional_capability_gpu_drivers_installed *)
  create_option : string prop option; [@option]  (** create_option *)
  shared_password_enabled : bool prop option; [@option]
      (** shared_password_enabled *)
  usage_quota : string prop option; [@option]  (** usage_quota *)
  admin_user : virtual_machine__admin_user list;
  image_reference : virtual_machine__image_reference list;
  non_admin_user : virtual_machine__non_admin_user list;
  sku : virtual_machine__sku list;
}
[@@deriving yojson_of]
(** virtual_machine *)

type azurerm_lab_service_lab = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  lab_plan_id : string prop option; [@option]  (** lab_plan_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  title : string prop;  (** title *)
  auto_shutdown : auto_shutdown list;
  connection_setting : connection_setting list;
  network : network list;
  roster : roster list;
  security : security list;
  timeouts : timeouts option;
  virtual_machine : virtual_machine list;
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab *)

let auto_shutdown ?disconnect_delay ?idle_delay ?no_connect_delay
    ?shutdown_on_idle () : auto_shutdown =
  {
    disconnect_delay;
    idle_delay;
    no_connect_delay;
    shutdown_on_idle;
  }

let connection_setting ?client_rdp_access ?client_ssh_access () :
    connection_setting =
  { client_rdp_access; client_ssh_access }

let network ?subnet_id () : network = { subnet_id }

let roster ?active_directory_group_id ?lms_instance ?lti_client_id
    ?lti_context_id ?lti_roster_endpoint () : roster =
  {
    active_directory_group_id;
    lms_instance;
    lti_client_id;
    lti_context_id;
    lti_roster_endpoint;
  }

let security ~open_access_enabled () : security =
  { open_access_enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_machine__admin_user ~password ~username () :
    virtual_machine__admin_user =
  { password; username }

let virtual_machine__image_reference ?id ?offer ?publisher ?sku
    ?version () : virtual_machine__image_reference =
  { id; offer; publisher; sku; version }

let virtual_machine__non_admin_user ~password ~username () :
    virtual_machine__non_admin_user =
  { password; username }

let virtual_machine__sku ~capacity ~name () : virtual_machine__sku =
  { capacity; name }

let virtual_machine ?additional_capability_gpu_drivers_installed
    ?create_option ?shared_password_enabled ?usage_quota ~admin_user
    ~image_reference ~non_admin_user ~sku () : virtual_machine =
  {
    additional_capability_gpu_drivers_installed;
    create_option;
    shared_password_enabled;
    usage_quota;
    admin_user;
    image_reference;
    non_admin_user;
    sku;
  }

let azurerm_lab_service_lab ?description ?id ?lab_plan_id ?tags
    ?timeouts ~location ~name ~resource_group_name ~title
    ~auto_shutdown ~connection_setting ~network ~roster ~security
    ~virtual_machine () : azurerm_lab_service_lab =
  {
    description;
    id;
    lab_plan_id;
    location;
    name;
    resource_group_name;
    tags;
    title;
    auto_shutdown;
    connection_setting;
    network;
    roster;
    security;
    timeouts;
    virtual_machine;
  }

type t = {
  description : string prop;
  id : string prop;
  lab_plan_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title : string prop;
}

let make ?description ?id ?lab_plan_id ?tags ?timeouts ~location
    ~name ~resource_group_name ~title ~auto_shutdown
    ~connection_setting ~network ~roster ~security ~virtual_machine
    __id =
  let __type = "azurerm_lab_service_lab" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lab_plan_id = Prop.computed __type __id "lab_plan_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_lab
        (azurerm_lab_service_lab ?description ?id ?lab_plan_id ?tags
           ?timeouts ~location ~name ~resource_group_name ~title
           ~auto_shutdown ~connection_setting ~network ~roster
           ~security ~virtual_machine ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?lab_plan_id ?tags ?timeouts
    ~location ~name ~resource_group_name ~title ~auto_shutdown
    ~connection_setting ~network ~roster ~security ~virtual_machine
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?lab_plan_id ?tags ?timeouts ~location
      ~name ~resource_group_name ~title ~auto_shutdown
      ~connection_setting ~network ~roster ~security ~virtual_machine
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
