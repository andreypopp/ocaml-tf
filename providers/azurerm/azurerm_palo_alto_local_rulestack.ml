(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?anti_spyware_profile ?anti_virus_profile
    ?description ?dns_subscription ?file_blocking_profile ?id
    ?url_filtering_profile ?vulnerability_profile ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_palo_alto_local_rulestack" in
  let __resource =
    azurerm_palo_alto_local_rulestack ?anti_spyware_profile
      ?anti_virus_profile ?description ?dns_subscription
      ?file_blocking_profile ?id ?url_filtering_profile
      ?vulnerability_profile ?timeouts ~location ~name
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack __resource);
  let __resource_attributes =
    ({
       anti_spyware_profile =
         Prop.computed __resource_type __resource_id
           "anti_spyware_profile";
       anti_virus_profile =
         Prop.computed __resource_type __resource_id
           "anti_virus_profile";
       description =
         Prop.computed __resource_type __resource_id "description";
       dns_subscription =
         Prop.computed __resource_type __resource_id
           "dns_subscription";
       file_blocking_profile =
         Prop.computed __resource_type __resource_id
           "file_blocking_profile";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       url_filtering_profile =
         Prop.computed __resource_type __resource_id
           "url_filtering_profile";
       vulnerability_profile =
         Prop.computed __resource_type __resource_id
           "vulnerability_profile";
     }
      : t)
  in
  __resource_attributes
