(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_palo_alto_local_rulestack_fqdn_list = {
  audit_comment : string prop option; [@option]  (** audit_comment *)
  description : string prop option; [@option]  (** description *)
  fully_qualified_domain_names : string prop list;
      (** fully_qualified_domain_names *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rulestack_id : string prop;  (** rulestack_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_fqdn_list *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
    ?description ?id ?timeouts ~fully_qualified_domain_names ~name
    ~rulestack_id () : azurerm_palo_alto_local_rulestack_fqdn_list =
  {
    audit_comment;
    description;
    fully_qualified_domain_names;
    id;
    name;
    rulestack_id;
    timeouts;
  }

type t = {
  audit_comment : string prop;
  description : string prop;
  fully_qualified_domain_names : string list prop;
  id : string prop;
  name : string prop;
  rulestack_id : string prop;
}

let make ?audit_comment ?description ?id ?timeouts
    ~fully_qualified_domain_names ~name ~rulestack_id __id =
  let __type = "azurerm_palo_alto_local_rulestack_fqdn_list" in
  let __attrs =
    ({
       audit_comment = Prop.computed __type __id "audit_comment";
       description = Prop.computed __type __id "description";
       fully_qualified_domain_names =
         Prop.computed __type __id "fully_qualified_domain_names";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rulestack_id = Prop.computed __type __id "rulestack_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list
        (azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
           ?description ?id ?timeouts ~fully_qualified_domain_names
           ~name ~rulestack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_comment ?description ?id ?timeouts
    ~fully_qualified_domain_names ~name ~rulestack_id __id =
  let (r : _ Tf_core.resource) =
    make ?audit_comment ?description ?id ?timeouts
      ~fully_qualified_domain_names ~name ~rulestack_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
