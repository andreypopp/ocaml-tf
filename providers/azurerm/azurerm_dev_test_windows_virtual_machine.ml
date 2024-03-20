(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gallery_image_reference = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** gallery_image_reference *)

type inbound_nat_rule = {
  backend_port : float prop;  (** backend_port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** inbound_nat_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_test_windows_virtual_machine = {
  allow_claim : bool prop option; [@option]  (** allow_claim *)
  disallow_public_ip_address : bool prop option; [@option]
      (** disallow_public_ip_address *)
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  lab_subnet_name : string prop;  (** lab_subnet_name *)
  lab_virtual_network_id : string prop;
      (** lab_virtual_network_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  password : string prop;  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  size : string prop;  (** size *)
  storage_type : string prop;  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  username : string prop;  (** username *)
  gallery_image_reference : gallery_image_reference list;
  inbound_nat_rule : inbound_nat_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_windows_virtual_machine *)

let gallery_image_reference ~offer ~publisher ~sku ~version () :
    gallery_image_reference =
  { offer; publisher; sku; version }

let inbound_nat_rule ~backend_port ~protocol () : inbound_nat_rule =
  { backend_port; protocol }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_windows_virtual_machine ?allow_claim
    ?disallow_public_ip_address ?id ?notes ?tags ?timeouts ~lab_name
    ~lab_subnet_name ~lab_virtual_network_id ~location ~name
    ~password ~resource_group_name ~size ~storage_type ~username
    ~gallery_image_reference ~inbound_nat_rule () :
    azurerm_dev_test_windows_virtual_machine =
  {
    allow_claim;
    disallow_public_ip_address;
    id;
    lab_name;
    lab_subnet_name;
    lab_virtual_network_id;
    location;
    name;
    notes;
    password;
    resource_group_name;
    size;
    storage_type;
    tags;
    username;
    gallery_image_reference;
    inbound_nat_rule;
    timeouts;
  }

type t = {
  allow_claim : bool prop;
  disallow_public_ip_address : bool prop;
  fqdn : string prop;
  id : string prop;
  lab_name : string prop;
  lab_subnet_name : string prop;
  lab_virtual_network_id : string prop;
  location : string prop;
  name : string prop;
  notes : string prop;
  password : string prop;
  resource_group_name : string prop;
  size : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
  username : string prop;
}

let make ?allow_claim ?disallow_public_ip_address ?id ?notes ?tags
    ?timeouts ~lab_name ~lab_subnet_name ~lab_virtual_network_id
    ~location ~name ~password ~resource_group_name ~size
    ~storage_type ~username ~gallery_image_reference
    ~inbound_nat_rule __id =
  let __type = "azurerm_dev_test_windows_virtual_machine" in
  let __attrs =
    ({
       allow_claim = Prop.computed __type __id "allow_claim";
       disallow_public_ip_address =
         Prop.computed __type __id "disallow_public_ip_address";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       lab_name = Prop.computed __type __id "lab_name";
       lab_subnet_name = Prop.computed __type __id "lab_subnet_name";
       lab_virtual_network_id =
         Prop.computed __type __id "lab_virtual_network_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       size = Prop.computed __type __id "size";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       unique_identifier =
         Prop.computed __type __id "unique_identifier";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_windows_virtual_machine
        (azurerm_dev_test_windows_virtual_machine ?allow_claim
           ?disallow_public_ip_address ?id ?notes ?tags ?timeouts
           ~lab_name ~lab_subnet_name ~lab_virtual_network_id
           ~location ~name ~password ~resource_group_name ~size
           ~storage_type ~username ~gallery_image_reference
           ~inbound_nat_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_claim ?disallow_public_ip_address ?id
    ?notes ?tags ?timeouts ~lab_name ~lab_subnet_name
    ~lab_virtual_network_id ~location ~name ~password
    ~resource_group_name ~size ~storage_type ~username
    ~gallery_image_reference ~inbound_nat_rule __id =
  let (r : _ Tf_core.resource) =
    make ?allow_claim ?disallow_public_ip_address ?id ?notes ?tags
      ?timeouts ~lab_name ~lab_subnet_name ~lab_virtual_network_id
      ~location ~name ~password ~resource_group_name ~size
      ~storage_type ~username ~gallery_image_reference
      ~inbound_nat_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
