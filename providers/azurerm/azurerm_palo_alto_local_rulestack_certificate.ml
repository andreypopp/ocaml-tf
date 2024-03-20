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

type azurerm_palo_alto_local_rulestack_certificate = {
  audit_comment : string prop option; [@option]  (** audit_comment *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  key_vault_certificate_id : string prop option; [@option]
      (** key_vault_certificate_id *)
  name : string prop;  (** name *)
  rulestack_id : string prop;  (** rulestack_id *)
  self_signed : bool prop option; [@option]  (** self_signed *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_local_rulestack_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack_certificate ?audit_comment
    ?description ?id ?key_vault_certificate_id ?self_signed ?timeouts
    ~name ~rulestack_id () :
    azurerm_palo_alto_local_rulestack_certificate =
  {
    audit_comment;
    description;
    id;
    key_vault_certificate_id;
    name;
    rulestack_id;
    self_signed;
    timeouts;
  }

type t = {
  audit_comment : string prop;
  description : string prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  rulestack_id : string prop;
  self_signed : bool prop;
}

let make ?audit_comment ?description ?id ?key_vault_certificate_id
    ?self_signed ?timeouts ~name ~rulestack_id __id =
  let __type = "azurerm_palo_alto_local_rulestack_certificate" in
  let __attrs =
    ({
       audit_comment = Prop.computed __type __id "audit_comment";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       key_vault_certificate_id =
         Prop.computed __type __id "key_vault_certificate_id";
       name = Prop.computed __type __id "name";
       rulestack_id = Prop.computed __type __id "rulestack_id";
       self_signed = Prop.computed __type __id "self_signed";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack_certificate
        (azurerm_palo_alto_local_rulestack_certificate ?audit_comment
           ?description ?id ?key_vault_certificate_id ?self_signed
           ?timeouts ~name ~rulestack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_comment ?description ?id
    ?key_vault_certificate_id ?self_signed ?timeouts ~name
    ~rulestack_id __id =
  let (r : _ Tf_core.resource) =
    make ?audit_comment ?description ?id ?key_vault_certificate_id
      ?self_signed ?timeouts ~name ~rulestack_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
