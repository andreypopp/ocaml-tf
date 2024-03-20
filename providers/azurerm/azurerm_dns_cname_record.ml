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

type azurerm_dns_cname_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  record : string prop option; [@option]  (** record *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_id : string prop option; [@option]
      (** target_resource_id *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_cname_record *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dns_cname_record ?id ?record ?tags ?target_resource_id
    ?timeouts ~name ~resource_group_name ~ttl ~zone_name () :
    azurerm_dns_cname_record =
  {
    id;
    name;
    record;
    resource_group_name;
    tags;
    target_resource_id;
    ttl;
    zone_name;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  record : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
  ttl : float prop;
  zone_name : string prop;
}

let make ?id ?record ?tags ?target_resource_id ?timeouts ~name
    ~resource_group_name ~ttl ~zone_name __id =
  let __type = "azurerm_dns_cname_record" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       record = Prop.computed __type __id "record";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
       ttl = Prop.computed __type __id "ttl";
       zone_name = Prop.computed __type __id "zone_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dns_cname_record
        (azurerm_dns_cname_record ?id ?record ?tags
           ?target_resource_id ?timeouts ~name ~resource_group_name
           ~ttl ~zone_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?record ?tags ?target_resource_id
    ?timeouts ~name ~resource_group_name ~ttl ~zone_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?record ?tags ?target_resource_id ?timeouts ~name
      ~resource_group_name ~ttl ~zone_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
