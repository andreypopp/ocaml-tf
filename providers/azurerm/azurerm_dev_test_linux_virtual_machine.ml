(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gallery_image_reference = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gallery_image_reference) -> ()

let yojson_of_gallery_image_reference =
  (function
   | {
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : gallery_image_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gallery_image_reference

[@@@deriving.end]

type inbound_nat_rule = {
  backend_port : float prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inbound_nat_rule) -> ()

let yojson_of_inbound_nat_rule =
  (function
   | { backend_port = v_backend_port; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backend_port in
         ("backend_port", arg) :: bnds
       in
       `Assoc bnds
    : inbound_nat_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inbound_nat_rule

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

type azurerm_dev_test_linux_virtual_machine = {
  allow_claim : bool prop option; [@option]
  disallow_public_ip_address : bool prop option; [@option]
  id : string prop option; [@option]
  lab_name : string prop;
  lab_subnet_name : string prop;
  lab_virtual_network_id : string prop;
  location : string prop;
  name : string prop;
  notes : string prop option; [@option]
  password : string prop option; [@option]
  resource_group_name : string prop;
  size : string prop;
  ssh_key : string prop option; [@option]
  storage_type : string prop;
  tags : (string * string prop) list option; [@option]
  username : string prop;
  gallery_image_reference : gallery_image_reference list;
  inbound_nat_rule : inbound_nat_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_test_linux_virtual_machine) -> ()

let yojson_of_azurerm_dev_test_linux_virtual_machine =
  (function
   | {
       allow_claim = v_allow_claim;
       disallow_public_ip_address = v_disallow_public_ip_address;
       id = v_id;
       lab_name = v_lab_name;
       lab_subnet_name = v_lab_subnet_name;
       lab_virtual_network_id = v_lab_virtual_network_id;
       location = v_location;
       name = v_name;
       notes = v_notes;
       password = v_password;
       resource_group_name = v_resource_group_name;
       size = v_size;
       ssh_key = v_ssh_key;
       storage_type = v_storage_type;
       tags = v_tags;
       username = v_username;
       gallery_image_reference = v_gallery_image_reference;
       inbound_nat_rule = v_inbound_nat_rule;
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
         let arg =
           yojson_of_list yojson_of_inbound_nat_rule
             v_inbound_nat_rule
         in
         ("inbound_nat_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_gallery_image_reference
             v_gallery_image_reference
         in
         ("gallery_image_reference", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_storage_type in
         ("storage_type", arg) :: bnds
       in
       let bnds =
         match v_ssh_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_lab_virtual_network_id
         in
         ("lab_virtual_network_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lab_subnet_name
         in
         ("lab_subnet_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lab_name in
         ("lab_name", arg) :: bnds
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
         match v_disallow_public_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disallow_public_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_claim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_claim", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_dev_test_linux_virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_test_linux_virtual_machine

[@@@deriving.end]

let gallery_image_reference ~offer ~publisher ~sku ~version () :
    gallery_image_reference =
  { offer; publisher; sku; version }

let inbound_nat_rule ~backend_port ~protocol () : inbound_nat_rule =
  { backend_port; protocol }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_linux_virtual_machine ?allow_claim
    ?disallow_public_ip_address ?id ?notes ?password ?ssh_key ?tags
    ?timeouts ~lab_name ~lab_subnet_name ~lab_virtual_network_id
    ~location ~name ~resource_group_name ~size ~storage_type
    ~username ~gallery_image_reference ~inbound_nat_rule () :
    azurerm_dev_test_linux_virtual_machine =
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
    ssh_key;
    storage_type;
    tags;
    username;
    gallery_image_reference;
    inbound_nat_rule;
    timeouts;
  }

type t = {
  tf_name : string;
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
  ssh_key : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
  username : string prop;
}

let make ?allow_claim ?disallow_public_ip_address ?id ?notes
    ?password ?ssh_key ?tags ?timeouts ~lab_name ~lab_subnet_name
    ~lab_virtual_network_id ~location ~name ~resource_group_name
    ~size ~storage_type ~username ~gallery_image_reference
    ~inbound_nat_rule __id =
  let __type = "azurerm_dev_test_linux_virtual_machine" in
  let __attrs =
    ({
       tf_name = __id;
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
       ssh_key = Prop.computed __type __id "ssh_key";
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
      yojson_of_azurerm_dev_test_linux_virtual_machine
        (azurerm_dev_test_linux_virtual_machine ?allow_claim
           ?disallow_public_ip_address ?id ?notes ?password ?ssh_key
           ?tags ?timeouts ~lab_name ~lab_subnet_name
           ~lab_virtual_network_id ~location ~name
           ~resource_group_name ~size ~storage_type ~username
           ~gallery_image_reference ~inbound_nat_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_claim ?disallow_public_ip_address ?id
    ?notes ?password ?ssh_key ?tags ?timeouts ~lab_name
    ~lab_subnet_name ~lab_virtual_network_id ~location ~name
    ~resource_group_name ~size ~storage_type ~username
    ~gallery_image_reference ~inbound_nat_rule __id =
  let (r : _ Tf_core.resource) =
    make ?allow_claim ?disallow_public_ip_address ?id ?notes
      ?password ?ssh_key ?tags ?timeouts ~lab_name ~lab_subnet_name
      ~lab_virtual_network_id ~location ~name ~resource_group_name
      ~size ~storage_type ~username ~gallery_image_reference
      ~inbound_nat_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
