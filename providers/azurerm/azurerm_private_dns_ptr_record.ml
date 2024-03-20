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

type azurerm_private_dns_ptr_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  records : string prop list;  (** records *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_ptr_record *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_ptr_record ?id ?tags ?timeouts ~name ~records
    ~resource_group_name ~ttl ~zone_name () :
    azurerm_private_dns_ptr_record =
  {
    id;
    name;
    records;
    resource_group_name;
    tags;
    ttl;
    zone_name;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  records : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

let make ?id ?tags ?timeouts ~name ~records ~resource_group_name ~ttl
    ~zone_name __id =
  let __type = "azurerm_private_dns_ptr_record" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       records = Prop.computed __type __id "records";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       ttl = Prop.computed __type __id "ttl";
       zone_name = Prop.computed __type __id "zone_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_ptr_record
        (azurerm_private_dns_ptr_record ?id ?tags ?timeouts ~name
           ~records ~resource_group_name ~ttl ~zone_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name ~records
    ~resource_group_name ~ttl ~zone_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~records ~resource_group_name ~ttl
      ~zone_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
