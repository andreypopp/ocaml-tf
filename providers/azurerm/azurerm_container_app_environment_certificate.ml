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

type azurerm_container_app_environment_certificate = {
  certificate_blob_base64 : string prop;
      (** The Certificate Private Key as a base64 encoded PFX or PEM. *)
  certificate_password : string prop;
      (** The password for the Certificate. *)
  container_app_environment_id : string prop;
      (** The Container App Managed Environment ID to configure this Certificate on. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the Container Apps Environment Certificate. *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app_environment_certificate ?id ?tags ?timeouts
    ~certificate_blob_base64 ~certificate_password
    ~container_app_environment_id ~name () :
    azurerm_container_app_environment_certificate =
  {
    certificate_blob_base64;
    certificate_password;
    container_app_environment_id;
    id;
    name;
    tags;
    timeouts;
  }

type t = {
  certificate_blob_base64 : string prop;
  certificate_password : string prop;
  container_app_environment_id : string prop;
  expiration_date : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

let make ?id ?tags ?timeouts ~certificate_blob_base64
    ~certificate_password ~container_app_environment_id ~name __id =
  let __type = "azurerm_container_app_environment_certificate" in
  let __attrs =
    ({
       certificate_blob_base64 =
         Prop.computed __type __id "certificate_blob_base64";
       certificate_password =
         Prop.computed __type __id "certificate_password";
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       issue_date = Prop.computed __type __id "issue_date";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_container_app_environment_certificate
        (azurerm_container_app_environment_certificate ?id ?tags
           ?timeouts ~certificate_blob_base64 ~certificate_password
           ~container_app_environment_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~certificate_blob_base64
    ~certificate_password ~container_app_environment_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~certificate_blob_base64
      ~certificate_password ~container_app_environment_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
