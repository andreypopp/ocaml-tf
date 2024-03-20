(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type record = {
  port : float prop;  (** port *)
  priority : float prop;  (** priority *)
  target : string prop;  (** target *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** record *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dns_srv_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  record : record list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_srv_record *)

let record ~port ~priority ~target ~weight () : record =
  { port; priority; target; weight }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dns_srv_record ?id ?tags ?timeouts ~name
    ~resource_group_name ~ttl ~zone_name ~record () :
    azurerm_dns_srv_record =
  {
    id;
    name;
    resource_group_name;
    tags;
    ttl;
    zone_name;
    record;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

let make ?id ?tags ?timeouts ~name ~resource_group_name ~ttl
    ~zone_name ~record __id =
  let __type = "azurerm_dns_srv_record" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_dns_srv_record
        (azurerm_dns_srv_record ?id ?tags ?timeouts ~name
           ~resource_group_name ~ttl ~zone_name ~record ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name
    ~resource_group_name ~ttl ~zone_name ~record __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~resource_group_name ~ttl
      ~zone_name ~record __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
