(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_dns_zone__soa_record = {
  email : string;  (** email *)
  expire_time : float option; [@option]  (** expire_time *)
  fqdn : string;  (** fqdn *)
  host_name : string option; [@option]  (** host_name *)
  minimum_ttl : float option; [@option]  (** minimum_ttl *)
  refresh_time : float option; [@option]  (** refresh_time *)
  retry_time : float option; [@option]  (** retry_time *)
  serial_number : float option; [@option]  (** serial_number *)
  tags : (string * string) list option; [@option]  (** tags *)
  ttl : float option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** azurerm_dns_zone__soa_record *)

type azurerm_dns_zone__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dns_zone__timeouts *)

type azurerm_dns_zone = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  soa_record : azurerm_dns_zone__soa_record list;
  timeouts : azurerm_dns_zone__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_zone *)

let azurerm_dns_zone ?tags ?timeouts ~name ~resource_group_name
    ~soa_record __resource_id =
  let __resource_type = "azurerm_dns_zone" in
  let __resource =
    { name; resource_group_name; tags; soa_record; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dns_zone __resource);
  ()