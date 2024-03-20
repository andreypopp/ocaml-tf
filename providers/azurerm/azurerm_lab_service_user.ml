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

type azurerm_lab_service_user = {
  additional_usage_quota : string prop option; [@option]
      (** additional_usage_quota *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  lab_id : string prop;  (** lab_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_user *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_user ?additional_usage_quota ?id ?timeouts
    ~email ~lab_id ~name () : azurerm_lab_service_user =
  { additional_usage_quota; email; id; lab_id; name; timeouts }

type t = {
  additional_usage_quota : string prop;
  email : string prop;
  id : string prop;
  lab_id : string prop;
  name : string prop;
}

let make ?additional_usage_quota ?id ?timeouts ~email ~lab_id ~name
    __id =
  let __type = "azurerm_lab_service_user" in
  let __attrs =
    ({
       additional_usage_quota =
         Prop.computed __type __id "additional_usage_quota";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       lab_id = Prop.computed __type __id "lab_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_user
        (azurerm_lab_service_user ?additional_usage_quota ?id
           ?timeouts ~email ~lab_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_usage_quota ?id ?timeouts ~email
    ~lab_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?additional_usage_quota ?id ?timeouts ~email ~lab_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
