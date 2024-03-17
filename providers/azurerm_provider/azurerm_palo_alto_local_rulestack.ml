(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack__timeouts *)

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
  timeouts : azurerm_palo_alto_local_rulestack__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack *)

let azurerm_palo_alto_local_rulestack ?anti_spyware_profile
    ?anti_virus_profile ?description ?dns_subscription
    ?file_blocking_profile ?id ?url_filtering_profile
    ?vulnerability_profile ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_palo_alto_local_rulestack" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_local_rulestack __resource);
  ()
