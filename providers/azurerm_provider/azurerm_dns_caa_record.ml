(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_dns_caa_record__record = {
  flags : float;  (** flags *)
  tag : string;  (** tag *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_dns_caa_record__record *)

type azurerm_dns_caa_record__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dns_caa_record__timeouts *)

type azurerm_dns_caa_record = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  ttl : float;  (** ttl *)
  zone_name : string;  (** zone_name *)
  record : azurerm_dns_caa_record__record list;
  timeouts : azurerm_dns_caa_record__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_caa_record *)

let azurerm_dns_caa_record ?tags ?timeouts ~name ~resource_group_name
    ~ttl ~zone_name ~record __resource_id =
  let __resource_type = "azurerm_dns_caa_record" in
  let __resource =
    {
      name;
      resource_group_name;
      tags;
      ttl;
      zone_name;
      record;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dns_caa_record __resource);
  ()