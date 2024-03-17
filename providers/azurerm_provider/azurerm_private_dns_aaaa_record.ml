(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_aaaa_record__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_aaaa_record__timeouts *)

type azurerm_private_dns_aaaa_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  records : string prop list;  (** records *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  timeouts : azurerm_private_dns_aaaa_record__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_aaaa_record *)

let azurerm_private_dns_aaaa_record ?id ?tags ?timeouts ~name
    ~records ~resource_group_name ~ttl ~zone_name __resource_id =
  let __resource_type = "azurerm_private_dns_aaaa_record" in
  let __resource =
    {
      id;
      name;
      records;
      resource_group_name;
      tags;
      ttl;
      zone_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_aaaa_record __resource);
  ()
