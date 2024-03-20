(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type status = {
  cause : string prop option; [@option]  (** cause *)
  code : string prop;  (** code *)
  description : string prop option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** status *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_security_center_assessment = {
  additional_data : (string * string prop) list option; [@option]
      (** additional_data *)
  assessment_policy_id : string prop;  (** assessment_policy_id *)
  id : string prop option; [@option]  (** id *)
  target_resource_id : string prop;  (** target_resource_id *)
  status : status list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment *)

let status ?cause ?description ~code () : status =
  { cause; code; description }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_assessment ?additional_data ?id ?timeouts
    ~assessment_policy_id ~target_resource_id ~status () :
    azurerm_security_center_assessment =
  {
    additional_data;
    assessment_policy_id;
    id;
    target_resource_id;
    status;
    timeouts;
  }

type t = {
  additional_data : (string * string) list prop;
  assessment_policy_id : string prop;
  id : string prop;
  target_resource_id : string prop;
}

let make ?additional_data ?id ?timeouts ~assessment_policy_id
    ~target_resource_id ~status __id =
  let __type = "azurerm_security_center_assessment" in
  let __attrs =
    ({
       additional_data = Prop.computed __type __id "additional_data";
       assessment_policy_id =
         Prop.computed __type __id "assessment_policy_id";
       id = Prop.computed __type __id "id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_assessment
        (azurerm_security_center_assessment ?additional_data ?id
           ?timeouts ~assessment_policy_id ~target_resource_id
           ~status ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_data ?id ?timeouts
    ~assessment_policy_id ~target_resource_id ~status __id =
  let (r : _ Tf_core.resource) =
    make ?additional_data ?id ?timeouts ~assessment_policy_id
      ~target_resource_id ~status __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
