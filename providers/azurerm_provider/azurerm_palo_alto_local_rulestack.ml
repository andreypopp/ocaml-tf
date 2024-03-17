(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack__timeouts *)

type azurerm_palo_alto_local_rulestack = {
  anti_spyware_profile : string option; [@option]
      (** anti_spyware_profile *)
  anti_virus_profile : string option; [@option]
      (** anti_virus_profile *)
  description : string option; [@option]  (** description *)
  dns_subscription : string option; [@option]
      (** dns_subscription *)
  file_blocking_profile : string option; [@option]
      (** file_blocking_profile *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  url_filtering_profile : string option; [@option]
      (** url_filtering_profile *)
  vulnerability_profile : string option; [@option]
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
