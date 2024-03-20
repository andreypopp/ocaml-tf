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

type azurerm_redis_firewall_rule = {
  end_ip : string prop;  (** end_ip *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  redis_cache_name : string prop;  (** redis_cache_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  start_ip : string prop;  (** start_ip *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_firewall_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_redis_firewall_rule ?id ?timeouts ~end_ip ~name
    ~redis_cache_name ~resource_group_name ~start_ip () :
    azurerm_redis_firewall_rule =
  {
    end_ip;
    id;
    name;
    redis_cache_name;
    resource_group_name;
    start_ip;
    timeouts;
  }

type t = {
  end_ip : string prop;
  id : string prop;
  name : string prop;
  redis_cache_name : string prop;
  resource_group_name : string prop;
  start_ip : string prop;
}

let make ?id ?timeouts ~end_ip ~name ~redis_cache_name
    ~resource_group_name ~start_ip __id =
  let __type = "azurerm_redis_firewall_rule" in
  let __attrs =
    ({
       end_ip = Prop.computed __type __id "end_ip";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       redis_cache_name =
         Prop.computed __type __id "redis_cache_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_ip = Prop.computed __type __id "start_ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_firewall_rule
        (azurerm_redis_firewall_rule ?id ?timeouts ~end_ip ~name
           ~redis_cache_name ~resource_group_name ~start_ip ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~end_ip ~name ~redis_cache_name
    ~resource_group_name ~start_ip __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~end_ip ~name ~redis_cache_name
      ~resource_group_name ~start_ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
