(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_dns_a_record__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dns_a_record__timeouts *)

type azurerm_dns_a_record = {
  name : string;  (** name *)
  records : string list option; [@option]  (** records *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_resource_id : string option; [@option]
      (** target_resource_id *)
  ttl : float;  (** ttl *)
  zone_name : string;  (** zone_name *)
  timeouts : azurerm_dns_a_record__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_a_record *)

let azurerm_dns_a_record ?records ?tags ?target_resource_id ?timeouts
    ~name ~resource_group_name ~ttl ~zone_name __resource_id =
  let __resource_type = "azurerm_dns_a_record" in
  let __resource =
    {
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