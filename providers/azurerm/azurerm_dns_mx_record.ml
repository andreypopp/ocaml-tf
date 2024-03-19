(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type record = {
  exchange : string prop;  (** exchange *)
  preference : string prop;  (** preference *)
}
[@@deriving yojson_of]
(** record *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dns_mx_record = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ttl : float prop;  (** ttl *)
  zone_name : string prop;  (** zone_name *)
  record : record list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dns_mx_record *)

let record ~exchange ~preference () : record =
  { exchange; preference }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dns_mx_record ?id ?name ?tags ?timeouts
    ~resource_group_name ~ttl ~zone_name ~record () :
    azurerm_dns_mx_record =
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

type t = {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

let register ?tf_module ?id ?name ?tags ?timeouts
    ~resource_group_name ~ttl ~zone_name ~record __resource_id =
  let __resource_type = "azurerm_dns_mx_record" in
  let __resource =
    azurerm_dns_mx_record ?id ?name ?tags ?timeouts
      ~resource_group_name ~ttl ~zone_name ~record ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dns_mx_record __resource);
  let __resource_attributes =
    ({
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       zone_name =
         Prop.computed __resource_type __resource_id "zone_name";
     }
      : t)
  in
  __resource_attributes
