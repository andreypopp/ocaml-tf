(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_hyperv_replication_policy_association = {
  hyperv_site_id : string prop;  (** hyperv_site_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_id : string prop;  (** policy_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_hyperv_replication_policy_association ?id
    ?timeouts ~hyperv_site_id ~name ~policy_id () :
    azurerm_site_recovery_hyperv_replication_policy_association =
  { hyperv_site_id; id; name; policy_id; timeouts }

type t = {
  hyperv_site_id : string prop;
  id : string prop;
  name : string prop;
  policy_id : string prop;
}

let make ?id ?timeouts ~hyperv_site_id ~name ~policy_id __id =
  let __type =
    "azurerm_site_recovery_hyperv_replication_policy_association"
  in
  let __attrs =
    ({
       hyperv_site_id = Prop.computed __type __id "hyperv_site_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_hyperv_replication_policy_association
        (azurerm_site_recovery_hyperv_replication_policy_association
           ?id ?timeouts ~hyperv_site_id ~name ~policy_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~hyperv_site_id ~name
    ~policy_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~hyperv_site_id ~name ~policy_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
