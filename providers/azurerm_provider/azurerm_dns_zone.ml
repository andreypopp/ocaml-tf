(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dns_zone__soa_record = {
  email : string prop;  (** email *)
  expire_time : float prop option; [@option]  (** expire_time *)
  fqdn : string prop;  (** fqdn *)
  host_name : string prop option; [@option]  (** host_name *)
  minimum_ttl : float prop option; [@option]  (** minimum_ttl *)
  refresh_time : float prop option; [@option]  (** refresh_time *)
  retry_time : float prop option; [@option]  (** retry_time *)
  serial_number : float prop option; [@option]  (** serial_number *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** azurerm_dns_zone__soa_record *)

type azurerm_dns_zone__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dns_zone__timeouts *)

type azurerm_dns_zone = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  soa_record : azurerm_dns_zone__soa_record list;
  timeouts : azurerm_dns_zone__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_zone *)

let azurerm_dns_zone ?id ?tags ?timeouts ~name ~resource_group_name
    ~soa_record __resource_id =
  let __resource_type = "azurerm_dns_zone" in
  let __resource =
    { id; name; resource_group_name; tags; soa_record; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dns_zone __resource);
  ()
