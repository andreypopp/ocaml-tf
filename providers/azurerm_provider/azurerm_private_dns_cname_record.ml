(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_private_dns_cname_record__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_cname_record__timeouts *)

type azurerm_private_dns_cname_record = {
  name : string;  (** name *)
  record : string;  (** record *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  ttl : float;  (** ttl *)
  zone_name : string;  (** zone_name *)
  timeouts : azurerm_private_dns_cname_record__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_cname_record *)

let azurerm_private_dns_cname_record ?tags ?timeouts ~name ~record
    ~resource_group_name ~ttl ~zone_name __resource_id =
  let __resource_type = "azurerm_private_dns_cname_record" in
  let __resource =
    {
      name;
      record;
      resource_group_name;
      tags;
      ttl;
      zone_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_cname_record __resource);
  ()
