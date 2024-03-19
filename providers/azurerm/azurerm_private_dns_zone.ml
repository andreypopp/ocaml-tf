(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type soa_record = {
  email : string prop;  (** email *)
  expire_time : float prop option; [@option]  (** expire_time *)
  minimum_ttl : float prop option; [@option]  (** minimum_ttl *)
  refresh_time : float prop option; [@option]  (** refresh_time *)
  retry_time : float prop option; [@option]  (** retry_time *)
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

type azurerm_private_dns_zone = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  soa_record : soa_record list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_zone *)

let soa_record ?expire_time ?minimum_ttl ?refresh_time ?retry_time
    ?tags ?ttl ~email () : soa_record =
  {
    email;
    expire_time;
    minimum_ttl;
    refresh_time;
    retry_time;
    tags;
    ttl;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_zone ?id ?tags ?timeouts ~name
    ~resource_group_name ~soa_record () : azurerm_private_dns_zone =
  { id; name; resource_group_name; tags; soa_record; timeouts }

type t = {
  id : string prop;
  max_number_of_record_sets : float prop;
  max_number_of_virtual_network_links : float prop;
  max_number_of_virtual_network_links_with_registration : float prop;
  name : string prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~name
    ~resource_group_name ~soa_record __resource_id =
  let __resource_type = "azurerm_private_dns_zone" in
  let __resource =
    azurerm_private_dns_zone ?id ?tags ?timeouts ~name
      ~resource_group_name ~soa_record ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_zone __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       max_number_of_record_sets =
         Prop.computed __resource_type __resource_id
           "max_number_of_record_sets";
       max_number_of_virtual_network_links =
         Prop.computed __resource_type __resource_id
           "max_number_of_virtual_network_links";
       max_number_of_virtual_network_links_with_registration =
         Prop.computed __resource_type __resource_id
           "max_number_of_virtual_network_links_with_registration";
       name = Prop.computed __resource_type __resource_id "name";
       number_of_record_sets =
         Prop.computed __resource_type __resource_id
           "number_of_record_sets";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
