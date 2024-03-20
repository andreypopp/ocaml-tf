(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_active_directory_domain_service_replica_set = {
  domain_service_id : string prop;  (** domain_service_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_replica_set *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_active_directory_domain_service_replica_set ?id ?timeouts
    ~domain_service_id ~location ~subnet_id () :
    azurerm_active_directory_domain_service_replica_set =
  { domain_service_id; id; location; subnet_id; timeouts }

type t = {
  domain_controller_ip_addresses : string list prop;
  domain_service_id : string prop;
  external_access_ip_address : string prop;
  id : string prop;
  location : string prop;
  service_status : string prop;
  subnet_id : string prop;
}

let make ?id ?timeouts ~domain_service_id ~location ~subnet_id __id =
  let __type =
    "azurerm_active_directory_domain_service_replica_set"
  in
  let __attrs =
    ({
       domain_controller_ip_addresses =
         Prop.computed __type __id "domain_controller_ip_addresses";
       domain_service_id =
         Prop.computed __type __id "domain_service_id";
       external_access_ip_address =
         Prop.computed __type __id "external_access_ip_address";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       service_status = Prop.computed __type __id "service_status";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_active_directory_domain_service_replica_set
        (azurerm_active_directory_domain_service_replica_set ?id
           ?timeouts ~domain_service_id ~location ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_service_id ~location
    ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_service_id ~location ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
