(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type guest_identity = {
  qualifier : string prop;  (** qualifier *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** guest_identity *)

type host_identity = {
  qualifier : string prop;  (** qualifier *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** host_identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logic_app_integration_account_agreement = {
  agreement_type : string prop;  (** agreement_type *)
  content : string prop;  (** content *)
  guest_partner_name : string prop;  (** guest_partner_name *)
  host_partner_name : string prop;  (** host_partner_name *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  guest_identity : guest_identity list;
  host_identity : host_identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_agreement *)

let guest_identity ~qualifier ~value () : guest_identity =
  { qualifier; value }

let host_identity ~qualifier ~value () : host_identity =
  { qualifier; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_agreement ?id ?metadata
    ?timeouts ~agreement_type ~content ~guest_partner_name
    ~host_partner_name ~integration_account_name ~name
    ~resource_group_name ~guest_identity ~host_identity () :
    azurerm_logic_app_integration_account_agreement =
  {
    agreement_type;
    content;
    guest_partner_name;
    host_partner_name;
    id;
    integration_account_name;
    metadata;
    name;
    resource_group_name;
    guest_identity;
    host_identity;
    timeouts;
  }

type t = {
  agreement_type : string prop;
  content : string prop;
  guest_partner_name : string prop;
  host_partner_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?metadata ?timeouts ~agreement_type
    ~content ~guest_partner_name ~host_partner_name
    ~integration_account_name ~name ~resource_group_name
    ~guest_identity ~host_identity __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_agreement"
  in
  let __resource =
    azurerm_logic_app_integration_account_agreement ?id ?metadata
      ?timeouts ~agreement_type ~content ~guest_partner_name
      ~host_partner_name ~integration_account_name ~name
      ~resource_group_name ~guest_identity ~host_identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_agreement
       __resource);
  let __resource_attributes =
    ({
       agreement_type =
         Prop.computed __resource_type __resource_id "agreement_type";
       content =
         Prop.computed __resource_type __resource_id "content";
       guest_partner_name =
         Prop.computed __resource_type __resource_id
           "guest_partner_name";
       host_partner_name =
         Prop.computed __resource_type __resource_id
           "host_partner_name";
       id = Prop.computed __resource_type __resource_id "id";
       integration_account_name =
         Prop.computed __resource_type __resource_id
           "integration_account_name";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
