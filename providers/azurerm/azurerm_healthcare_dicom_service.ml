(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type authentication = {
  audience : string prop list;  (** audience *)
  authority : string prop;  (** authority *)
}
[@@deriving yojson_of]

type private_endpoint = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_healthcare_dicom_service = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop;  (** workspace_id *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_dicom_service *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_dicom_service ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~workspace_id ~identity () : azurerm_healthcare_dicom_service =
  {
    id;
    location;
    name;
    public_network_access_enabled;
    tags;
    workspace_id;
    identity;
    timeouts;
  }

type t = {
  authentication : authentication list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_endpoint : private_endpoint list prop;
  public_network_access_enabled : bool prop;
  service_url : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?id ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~workspace_id ~identity __id =
  let __type = "azurerm_healthcare_dicom_service" in
  let __attrs =
    ({
       authentication = Prop.computed __type __id "authentication";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_endpoint =
         Prop.computed __type __id "private_endpoint";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       service_url = Prop.computed __type __id "service_url";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_dicom_service
        (azurerm_healthcare_dicom_service ?id
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~workspace_id ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_network_access_enabled ?tags
    ?timeouts ~location ~name ~workspace_id ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_network_access_enabled ?tags ?timeouts ~location
      ~name ~workspace_id ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
