(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_srv_record__record = {
  port : float prop;  (** port *)
  priority : float prop;  (** priority *)
  target : string prop;  (** target *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_srv_record__record *)

type azurerm_private_dns_srv_record__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_srv_record__timeouts *)

type azurerm_private_dns_srv_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  record : azurerm_private_dns_srv_record__record list;
  timeouts : azurerm_private_dns_srv_record__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_srv_record *)

let azurerm_private_dns_srv_record ?id ?tags ?timeouts ~name
    ~resource_group_name ~ttl ~zone_name ~record __resource_id =
  let __resource_type = "azurerm_private_dns_srv_record" in
  let __resource =
    {
      id;
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
    (yojson_of_azurerm_private_dns_srv_record __resource);
  ()
