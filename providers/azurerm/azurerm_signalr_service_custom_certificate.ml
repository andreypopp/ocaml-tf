(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_signalr_service_custom_certificate = {
  custom_certificate_id : string prop;  (** custom_certificate_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  signalr_service_id : string prop;  (** signalr_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_service_custom_certificate *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_signalr_service_custom_certificate ?id ?timeouts
    ~custom_certificate_id ~name ~signalr_service_id () :
    azurerm_signalr_service_custom_certificate =
  { custom_certificate_id; id; name; signalr_service_id; timeouts }

type t = {
  certificate_version : string prop;
  custom_certificate_id : string prop;
  id : string prop;
  name : string prop;
  signalr_service_id : string prop;
}

let make ?id ?timeouts ~custom_certificate_id ~name
    ~signalr_service_id __id =
  let __type = "azurerm_signalr_service_custom_certificate" in
  let __attrs =
    ({
       certificate_version =
         Prop.computed __type __id "certificate_version";
       custom_certificate_id =
         Prop.computed __type __id "custom_certificate_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       signalr_service_id =
         Prop.computed __type __id "signalr_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_signalr_service_custom_certificate
        (azurerm_signalr_service_custom_certificate ?id ?timeouts
           ~custom_certificate_id ~name ~signalr_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~custom_certificate_id ~name
    ~signalr_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~custom_certificate_id ~name
      ~signalr_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
