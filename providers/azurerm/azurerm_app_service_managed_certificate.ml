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

type azurerm_app_service_managed_certificate = {
  custom_hostname_binding_id : string prop;
      (** custom_hostname_binding_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_managed_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_managed_certificate ?id ?tags ?timeouts
    ~custom_hostname_binding_id () :
    azurerm_app_service_managed_certificate =
  { custom_hostname_binding_id; id; tags; timeouts }

type t = {
  canonical_name : string prop;
  custom_hostname_binding_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

let make ?id ?tags ?timeouts ~custom_hostname_binding_id __id =
  let __type = "azurerm_app_service_managed_certificate" in
  let __attrs =
    ({
       canonical_name = Prop.computed __type __id "canonical_name";
       custom_hostname_binding_id =
         Prop.computed __type __id "custom_hostname_binding_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       friendly_name = Prop.computed __type __id "friendly_name";
       host_names = Prop.computed __type __id "host_names";
       id = Prop.computed __type __id "id";
       issue_date = Prop.computed __type __id "issue_date";
       issuer = Prop.computed __type __id "issuer";
       subject_name = Prop.computed __type __id "subject_name";
       tags = Prop.computed __type __id "tags";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_managed_certificate
        (azurerm_app_service_managed_certificate ?id ?tags ?timeouts
           ~custom_hostname_binding_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~custom_hostname_binding_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~custom_hostname_binding_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
