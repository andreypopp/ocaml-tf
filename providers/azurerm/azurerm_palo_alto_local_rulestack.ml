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

type azurerm_palo_alto_local_rulestack = {
  anti_spyware_profile : string prop option; [@option]
      (** anti_spyware_profile *)
  anti_virus_profile : string prop option; [@option]
      (** anti_virus_profile *)
  description : string prop option; [@option]  (** description *)
  dns_subscription : string prop option; [@option]
      (** dns_subscription *)
  file_blocking_profile : string prop option; [@option]
      (** file_blocking_profile *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  url_filtering_profile : string prop option; [@option]
      (** url_filtering_profile *)
  vulnerability_profile : string prop option; [@option]
      (** vulnerability_profile *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack ?anti_spyware_profile
    ?anti_virus_profile ?description ?dns_subscription
    ?file_blocking_profile ?id ?url_filtering_profile
    ?vulnerability_profile ?timeouts ~location ~name
    ~resource_group_name () : azurerm_palo_alto_local_rulestack =
  {
    anti_spyware_profile;
    anti_virus_profile;
    description;
    dns_subscription;
    file_blocking_profile;
    id;
    location;
    name;
    resource_group_name;
    url_filtering_profile;
    vulnerability_profile;
    timeouts;
  }

type t = {
  anti_spyware_profile : string prop;
  anti_virus_profile : string prop;
  description : string prop;
  dns_subscription : string prop;
  file_blocking_profile : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  url_filtering_profile : string prop;
  vulnerability_profile : string prop;
}

let make ?anti_spyware_profile ?anti_virus_profile ?description
    ?dns_subscription ?file_blocking_profile ?id
    ?url_filtering_profile ?vulnerability_profile ?timeouts ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_palo_alto_local_rulestack" in
  let __attrs =
    ({
       anti_spyware_profile =
         Prop.computed __type __id "anti_spyware_profile";
       anti_virus_profile =
         Prop.computed __type __id "anti_virus_profile";
       description = Prop.computed __type __id "description";
       dns_subscription =
         Prop.computed __type __id "dns_subscription";
       file_blocking_profile =
         Prop.computed __type __id "file_blocking_profile";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       url_filtering_profile =
         Prop.computed __type __id "url_filtering_profile";
       vulnerability_profile =
         Prop.computed __type __id "vulnerability_profile";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack
        (azurerm_palo_alto_local_rulestack ?anti_spyware_profile
           ?anti_virus_profile ?description ?dns_subscription
           ?file_blocking_profile ?id ?url_filtering_profile
           ?vulnerability_profile ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?anti_spyware_profile ?anti_virus_profile
    ?description ?dns_subscription ?file_blocking_profile ?id
    ?url_filtering_profile ?vulnerability_profile ?timeouts ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?anti_spyware_profile ?anti_virus_profile ?description
      ?dns_subscription ?file_blocking_profile ?id
      ?url_filtering_profile ?vulnerability_profile ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
