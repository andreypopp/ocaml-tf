(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type soa_record = {
  email : string prop;  (** email *)
  expire_time : float prop option; [@option]  (** expire_time *)
  host_name : string prop option; [@option]  (** host_name *)
  minimum_ttl : float prop option; [@option]  (** minimum_ttl *)
  refresh_time : float prop option; [@option]  (** refresh_time *)
  retry_time : float prop option; [@option]  (** retry_time *)
  serial_number : float prop option; [@option]  (** serial_number *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** soa_record *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dns_zone = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  soa_record : soa_record list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_zone *)

let soa_record ?expire_time ?host_name ?minimum_ttl ?refresh_time
    ?retry_time ?serial_number ?tags ?ttl ~email () : soa_record =
  {
    email;
    expire_time;
    host_name;
    minimum_ttl;
    refresh_time;
    retry_time;
    serial_number;
    tags;
    ttl;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dns_zone ?id ?tags ?timeouts ~name ~resource_group_name
    ~soa_record () : azurerm_dns_zone =
  { id; name; resource_group_name; tags; soa_record; timeouts }

type t = {
  id : string prop;
  max_number_of_record_sets : float prop;
  name : string prop;
  name_servers : string list prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~name ~resource_group_name ~soa_record
    __id =
  let __type = "azurerm_dns_zone" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       max_number_of_record_sets =
         Prop.computed __type __id "max_number_of_record_sets";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       number_of_record_sets =
         Prop.computed __type __id "number_of_record_sets";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dns_zone
        (azurerm_dns_zone ?id ?tags ?timeouts ~name
           ~resource_group_name ~soa_record ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name
    ~resource_group_name ~soa_record __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~resource_group_name ~soa_record
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
