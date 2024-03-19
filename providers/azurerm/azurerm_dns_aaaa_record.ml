(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dns_aaaa_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  records : string prop list option; [@option]  (** records *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_id : string prop option; [@option]
      (** target_resource_id *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_aaaa_record *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dns_aaaa_record ?id ?records ?tags ?target_resource_id
    ?timeouts ~name ~resource_group_name ~ttl ~zone_name () :
    azurerm_dns_aaaa_record =
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

type t = {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  records : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
  ttl : float prop;
  zone_name : string prop;
}

let register ?tf_module ?id ?records ?tags ?target_resource_id
    ?timeouts ~name ~resource_group_name ~ttl ~zone_name
    __resource_id =
  let __resource_type = "azurerm_dns_aaaa_record" in
  let __resource =
    azurerm_dns_aaaa_record ?id ?records ?tags ?target_resource_id
      ?timeouts ~name ~resource_group_name ~ttl ~zone_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dns_aaaa_record __resource);
  let __resource_attributes =
    ({
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       records =
         Prop.computed __resource_type __resource_id "records";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       zone_name =
         Prop.computed __resource_type __resource_id "zone_name";
     }
      : t)
  in
  __resource_attributes
