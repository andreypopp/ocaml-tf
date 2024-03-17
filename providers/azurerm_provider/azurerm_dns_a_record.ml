(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dns_a_record__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dns_a_record__timeouts *)

type azurerm_dns_a_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  records : string prop list option; [@option]  (** records *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_id : string prop option; [@option]
      (** target_resource_id *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  timeouts : azurerm_dns_a_record__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_a_record *)

let azurerm_dns_a_record ?id ?records ?tags ?target_resource_id
    ?timeouts ~name ~resource_group_name ~ttl ~zone_name
    __resource_id =
  let __resource_type = "azurerm_dns_a_record" in
  let __resource =
    {
      id;
      name;
      records;
      resource_group_name;
      tags;
      target_resource_id;
      ttl;
      zone_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dns_a_record __resource);
  ()
